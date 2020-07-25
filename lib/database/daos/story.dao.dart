import 'package:coka/database/db.dart';
import 'package:coka/database/tables/story.table.dart';
import 'package:moor/moor.dart';

part 'story.dao.g.dart';

@UseDao(tables: [Stories])
class StoryDao extends DatabaseAccessor<DB> with _$StoryDaoMixin {
  StoryDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Story>> getAllStories() => select(stories).get();
  Stream<List<Story>> watchAllStories() => select(stories).watch();
  Future<int> insertStory(Story story) => into(stories).insert(story);
  Future updateStory(Story story) => update(stories).replace(story);
  Future deleteStory(Story story) => delete(stories).delete(story);
}
