import 'package:grasstudy_client/common/module/api/client.dart';
import 'package:grasstudy_client/data/model/user.dart';
import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/repository/user/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final Client client;
  UserRepositoryImpl(this.client);

  @override
  Future<Result> isDuplicatedEmail(String email) {
    throw UnimplementedError();
  }

  @override
  Future<Result> isDuplicatedNickname(String nickname) {
    throw UnimplementedError();
  }

  @override
  Future<Result> register(User user) async {
    return await client.post(url: '/user', data: user.toJson());
  }
}
