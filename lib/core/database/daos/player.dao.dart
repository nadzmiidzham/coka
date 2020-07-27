import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/player.table.dart';
import 'package:moor/moor.dart';

part 'player.dao.g.dart';

@UseDao(tables: [Players])
class PlayerDao extends DatabaseAccessor<DB> with _$PlayerDaoMixin {
  PlayerDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Player>> getAllPlayers() => select(players).get();
  Stream<List<Player>> watchAllPlayers() => select(players).watch();
  Future<int> insertPlayer(PlayersCompanion player) => into(players).insert(player);
  Future updatePlayer(PlayersCompanion player) => update(players).replace(player);
  Future deletePlayer(PlayersCompanion player) => delete(players).delete(player);
}
