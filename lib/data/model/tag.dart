import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grasstudy_client/presentation/widget/autocomplete/data/autocompletable.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@Freezed(equal: false)
class Tag extends Equatable with _$Tag, Autocompletable {
  Tag._();

  factory Tag({
    required String id,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  @override
  String get displayString => id;

  @override
  List<Object?> get props => [id];
}
