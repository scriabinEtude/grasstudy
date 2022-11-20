import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/repository/tag/tag_repository.dart';

class TagRepositoryTest extends TagRepository {
  @override
  Future<Result> addTag(Tag tag) {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Tag>>> getTagsForRegist() {
    return Future.value(Result<List<Tag>>.success(const [
      Tag(id: "태그1"),
      Tag(id: "태 그2"),
      Tag(id: "태그 3"),
      Tag(id: "태 그 4"),
      Tag(id: "태그  5"),
      Tag(id: "태6"),
      Tag(id: "7+"),
    ]));
  }
}
