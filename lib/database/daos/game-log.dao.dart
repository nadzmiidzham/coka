import 'package:coka/database/db.dart';
import 'package:coka/database/tables/game-log.table.dart';
import 'package:moor/moor.dart';

part 'game-log.dao.g.dart';

@UseDao(tables: [GameLogs])
class GameLogDao extends DatabaseAccessor<DB> with _$GameLogDaoMixin {
  GameLogDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<GameLog>> getAllGameLogs() => select(gameLogs).get();
  Stream<List<GameLog>> watchAllGameLogs() => select(gameLogs).watch();
  Future<int> insertGameLog(GameLog gameLog) => into(gameLogs).insert(gameLog);
  Future updateGameLog(GameLog gameLog) => update(gameLogs).replace(gameLog);
  Future deleteGameLog(GameLog gameLog) => delete(gameLogs).delete(gameLog);
}
