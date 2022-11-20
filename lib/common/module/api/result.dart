import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result {
  factory Result.success(T data) = Success<T>;
  factory Result.failure(
    int status,
    String? message,
  ) = Failure;
}
