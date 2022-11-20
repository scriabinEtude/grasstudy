import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grasstudy_client/data/model/tag.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String email,
    required String nickname,
    required String password,
    List<Tag>? interestTags,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
