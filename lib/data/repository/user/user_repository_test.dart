import 'package:grasstudy_client/data/model/user.dart';
import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/repository/user/user_repository.dart';

class UserRepositoryTest extends UserRepository {
  @override
  Future<Result> isDuplicatedEmail(String email) {
    throw UnimplementedError();
  }

  @override
  Future<Result> isDuplicatedNickname(String nickname) {
    throw UnimplementedError();
  }

  @override
  Future<Result> register(User user) {
    throw UnimplementedError();
  }
}
