import 'package:coka/database/db.dart';
import 'package:coka/database/tables/game-session.table.dart';
import 'package:moor/moor.dart';

part 'game-session.dao.g.dart';

@UseDao(tables: [GameSessions])
class GameSessionDao extends DatabaseAccessor<DB> with _$GameSessionDaoMixin {
  GameSessionDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<GameSession>> getAllGameSessions() => select(gameSessions).get();
  Stream<List<GameSession>> watchAllGameSessions() => select(gameSessions).watch();
  Future<int> insertGameSession(GameSession gameSession) => into(gameSessions).insert(gameSession);
  Future updateGameSession(GameSession gameSession) => update(gameSessions).replace(gameSession);
  Future deleteGameSession(GameSession gameSession) => delete(gameSessions).delete(gameSession);
}
