import 'package:dio/dio.dart';
import 'package:grasstudy_client/common/module/api/client.dart';
import 'package:grasstudy_client/common/module/api/result.dart';

class ClientDio implements Client {
  final Dio dio;

  ClientDio(String baseUrl)
      : dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
          ),
        );

  @override
  Future<Result<T>> get<T>({
    required String url,
    Map<String, String>? queryParameters,
    required T Function(Map<String, dynamic> json) parser,
  }) async {
    Response<Map<String, dynamic>> response =
        await dio.get(url, queryParameters: queryParameters);

    return Result<T>.success(parser(response.data!));
  }

  @override
  Future<Result<T?>> post<T>({
    required String url,
    Map<String, String>? data,
    T Function(Map<String, dynamic> json)? parser,
  }) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
