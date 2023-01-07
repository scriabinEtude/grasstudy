import 'package:get_it/get_it.dart';
import 'package:grasstudy_client/common/module/api/client.dart';
import 'package:grasstudy_client/common/module/api/client_dio/client_dio.dart';
import 'package:grasstudy_client/common/module/api/client_dio/intercepter/dio_auth_interceptor.dart';
import 'package:grasstudy_client/data/repository/study/study_repository.dart';
import 'package:grasstudy_client/data/repository/study/study_repository_impl.dart';
import 'package:grasstudy_client/data/repository/tag/tag_repository.dart';
import 'package:grasstudy_client/data/repository/tag/tag_repository_test.dart';
import 'package:grasstudy_client/data/repository/user/user_repository.dart';
import 'package:grasstudy_client/data/repository/user/user_repository_impl.dart';

final di = GetIt.instance;

class Di {
  static void setup(String baseUrl) {
    Client client = ClientDio(baseUrl)
      ..addInterceptor(DioAuthInterceptor(baseUrl));
    di.registerSingleton<UserRepository>(UserRepositoryImpl(client));
    // di.registerSingleton<UserRepository>(UserRepositoryTest());
    di.registerSingleton<TagRepository>(TagRepositoryTest());
    di.registerSingleton<StudyRepository>(StudyRepositoryImpl(client));
  }

  static void repositorySetup() {}
}
