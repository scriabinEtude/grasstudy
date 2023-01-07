import 'package:grasstudy_client/common/module/api/client.dart';
import 'package:grasstudy_client/data/model/study.dart';
import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/repository/study/study_repository.dart';

class StudyRepositoryImpl extends StudyRepository {
  final Client client;
  StudyRepositoryImpl(this.client);

  @override
  Future<Result<void>> register(Study study) async {
    try {
      return await client.post(url: '/study', data: study.toJson());
    } catch (e) {
      return Result.failure(500, e.toString());
    }
  }
}
