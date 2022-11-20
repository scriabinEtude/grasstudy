import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/model/tag.dart';

abstract class TagRepository {
  Future<Result<List<Tag>>> getTagsForRegist();
  Future<Result> addTag(Tag tag);
}
