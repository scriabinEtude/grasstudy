import 'package:get_it/get_it.dart';
import 'package:grasstudy_client/common/module/api/client.dart';
import 'package:grasstudy_client/common/module/api/client_dio.dart';
import 'package:grasstudy_client/data/repository/user/user_repository.dart';
import 'package:grasstudy_client/data/repository/user/user_repository_test.dart';

final di = GetIt.instance;

class Di {
  static void setup(String baseUrl) {
    Client client = ClientDio(baseUrl);
    di.registerSingleton<UserRepository>(UserRepositoryImpl(client));
  }

  static void repositorySetup() {}
}
