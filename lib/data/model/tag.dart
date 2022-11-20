import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

// @freezed
@Freezed(equal: false)
class Tag extends Equatable with _$Tag {
  const Tag._();

  const factory Tag({
    required String id,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  @override
  List<Object?> get props => [id];
}
