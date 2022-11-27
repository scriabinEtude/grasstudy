import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/model/jwt.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/data/model/user.dart';

abstract class UserRepository {
  Future<Result<JWT>> login(String email, String password);
  Future<Result> register(User user);
  Future<Result> isDuplicatedEmail(String email);
  Future<Result> isDuplicatedNickname(String nickname);
  Future<Result> updateUserInterestTag(List<Tag> tags);
}
