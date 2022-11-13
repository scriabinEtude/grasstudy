import 'package:grasstudy_client/module/api/result.dart';

abstract class Client {
  Future<Result<T>> get<T>({
    required String url,
    Map<String, String>? queryParameters,
    required T Function(Map<String, dynamic> json) parser,
  });
  Future<Result<T?>> post<T>({
    required String url,
    Map<String, String>? data,
    T Function(Map<String, dynamic> json)? parser,
  });
}
