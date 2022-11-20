import 'package:grasstudy_client/common/module/api/result.dart';

abstract class Client {
  Future<Result<T>> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) parser,
  });
  Future<Result<T?>> post<T>({
    required String url,
    Map<String, dynamic>? data,
    T Function(Map<String, dynamic> json)? parser,
  });
}
