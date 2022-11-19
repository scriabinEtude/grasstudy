import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result {
  factory Result.success(T data) = Success;
  factory Result.failure({
    required DateTime timestamp,
    required String path,
    required int status,
    required String error,
    required String? message,
    required String requestId,
  }) = Failure;
}
