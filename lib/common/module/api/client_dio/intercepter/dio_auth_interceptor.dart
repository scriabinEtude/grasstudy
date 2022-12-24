import 'package:dio/dio.dart';
import 'package:grasstudy_client/common/module/secure_storage/secure_storage.dart';
import 'package:grasstudy_client/data/model/jwt.dart';

class DioAuthInterceptor extends Interceptor {
  final String baseUrl;
  final Dio independentClient;

  final SecureStorage _secureStorage = SecureStorage();

  DioAuthInterceptor(this.baseUrl)
      : independentClient = Dio(
          BaseOptions(
            baseUrl: baseUrl,
          ),
        );

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(
      (await _secureStorage.jwtGet()).toJson(),
    );
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    JWT jwt = await _secureStorage.jwtGet();
    if (!jwt.isExist) {
      return handler.reject(err);
    }

    const pathRefresh = '/session/refresh';
    final isStatus401 = err.response?.statusCode == 401;
    final isPathRefresh = err.requestOptions.path == pathRefresh;

    if (isStatus401 && !isPathRefresh) {
      try {
        final Response<Map<String, dynamic>> res =
            await independentClient.post(pathRefresh, data: {
          'accessToken': jwt.accessToken,
          'refreshToken': jwt.refreshToken,
        });

        final options = err.requestOptions;

        await _secureStorage.jwtSet(JWT.fromJson(res.data!));
        final response = await independentClient.fetch(options);
        return handler.resolve(response);
      } on DioError catch (e) {
        return handler.reject(e);
      }
    }
    super.onError(err, handler);
  }
}
