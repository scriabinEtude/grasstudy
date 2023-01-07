import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/model/study.dart';

abstract class StudyRepository {
  Future<Result<void>> register(Study study);
}
