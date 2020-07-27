import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/game-log.table.dart';
import 'package:moor/moor.dart';

part 'game-log.dao.g.dart';

@UseDao(tables: [GameLogs])
class GameLogDao extends DatabaseAccessor<DB> with _$GameLogDaoMixin {
  GameLogDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<GameLog>> getAllGameLogs() => select(gameLogs).get();
  Stream<List<GameLog>> watchAllGameLogs() => select(gameLogs).watch();
  Future<int> insertGameLog(GameLogsCompanion gameLog) => into(gameLogs).insert(gameLog);
  Future updateGameLog(GameLogsCompanion gameLog) => update(gameLogs).replace(gameLog);
  Future deleteGameLog(GameLogsCompanion gameLog) => delete(gameLogs).delete(gameLog);
}
