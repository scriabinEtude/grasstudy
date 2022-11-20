import 'package:dio/dio.dart';
import 'package:grasstudy_client/common/module/api/client.dart';
import 'package:grasstudy_client/common/module/api/client_dio/client_dio_interceptors.dart';
import 'package:grasstudy_client/common/module/api/result.dart';

class ClientDio implements Client {
  final Dio dio;

  ClientDio(String baseUrl)
      : dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
          ),
        )..interceptors.addAll(dio_interceptors);

  @override
  Future<Result<T>> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) parser,
  }) async {
    Response<Map<String, dynamic>> response =
        await dio.get(url, queryParameters: queryParameters);

    return Result<T>.success(parser(response.data!));
  }

  @override
  Future<Result<T?>> post<T>({
    required String url,
    Map<String, dynamic>? data,
    T Function(Map<String, dynamic> json)? parser,
  }) async {
    Response<Map<String, dynamic>> response = await dio.post(url, data: data);
    if (response.statusCode == 200) {
      if (parser == null) {
        return Result<T?>.success(null);
      } else {
        return Result<T>.success(parser(response.data!));
      }
    } else {
      return Result.failure(response.statusCode ?? 500, response.statusMessage);
    }
  }
}
