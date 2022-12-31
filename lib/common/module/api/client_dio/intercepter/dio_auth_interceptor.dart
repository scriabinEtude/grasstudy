import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
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
        )..interceptors.add(PrettyDioLogger(
            requestHeader: false,
            queryParameters: true,
            requestBody: true,
            responseHeader: false,
            responseBody: true,
            error: true,
            showProcessingTime: true,
            showCUrl: false,
            canShowLog: kDebugMode,
          ));

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(
      (await _secureStorage.getRequestHeader()),
    );
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    JWT jwt = await _secureStorage.jwtGet();
    if (!jwt.isExist) {
      return handler.reject(err);
    }

    final isStatus401 = err.response?.statusCode == 401;

    const pathRefresh = '/session/refresh';
    final isPathRefresh = err.requestOptions.path == pathRefresh;

    const pathLogin = "/user";
    final isPathLogin = err.requestOptions.path == pathLogin;

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
    } else if (isStatus401 && isPathLogin) {
      await _secureStorage.jwtRemove();
    }
    super.onError(err, handler);
  }
}
