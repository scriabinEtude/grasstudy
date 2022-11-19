import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/model/user.dart';

abstract class UserRepository {
  Future<Result> register(User user);
  Future<Result> isDuplicated(String email);
}
