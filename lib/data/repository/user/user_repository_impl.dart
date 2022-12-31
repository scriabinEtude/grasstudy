import 'package:grasstudy_client/common/module/api/client.dart';
import 'package:grasstudy_client/data/model/jwt.dart';
import 'package:grasstudy_client/data/model/tag.dart';
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

  @override
  Future<Result> updateUserInterestTag(List<Tag> tags) async {
    return Result.success(true);
  }

  @override
  Future<Result<JWT>> login(String email, String password) async {
    try {
      return await client.postParser<JWT>(
        url: '/session/sign-in',
        data: {
          'email': email,
          'password': password,
        },
        parser: JWT.fromJson,
      );
    } catch (e) {
      return Result.failure(500, e.toString());
    }
  }

  @override
  Future<Result<User>> getUserByToken() async {
    try {
      return await client.get<User>(
        url: '/user',
        parser: User.fromJson,
      );
    } catch (e) {
      return Result.failure(500, e.toString());
    }
  }
}
