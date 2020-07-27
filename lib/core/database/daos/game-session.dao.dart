import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/game-session.table.dart';
import 'package:moor/moor.dart';

part 'game-session.dao.g.dart';

@UseDao(tables: [GameSessions])
class GameSessionDao extends DatabaseAccessor<DB> with _$GameSessionDaoMixin {
  GameSessionDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<GameSession>> getAllGameSessions() => select(gameSessions).get();
  Stream<List<GameSession>> watchAllGameSessions() => select(gameSessions).watch();
  Future<int> insertGameSession(GameSessionsCompanion gameSession) => into(gameSessions).insert(gameSession);
  Future updateGameSession(GameSessionsCompanion gameSession) => update(gameSessions).replace(gameSession);
  Future deleteGameSession(GameSessionsCompanion gameSession) => delete(gameSessions).delete(gameSession);
}
