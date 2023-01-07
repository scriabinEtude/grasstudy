import 'package:freezed_annotation/freezed_annotation.dart';

part 'study.freezed.dart';
part 'study.g.dart';

@freezed
class Study with _$Study {
  factory Study({
    required String name,
    required String introduce,
    required List<String> interestTags,
  }) = _Study;

  factory Study.fromJson(Map<String, dynamic> json) => _$StudyFromJson(json);
}
