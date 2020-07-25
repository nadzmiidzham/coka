import 'package:coka/database/db.dart';
import 'package:coka/database/tables/player.table.dart';
import 'package:moor/moor.dart';

part 'player.dao.g.dart';

@UseDao(tables: [Players])
class PlayerDao extends DatabaseAccessor<DB> with _$PlayerDaoMixin {
  PlayerDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Player>> getAllPlayers() => select(players).get();
  Stream<List<Player>> watchAllPlayers() => select(players).watch();
  Future<int> insertPlayer(Player player) => into(players).insert(player);
  Future updatePlayer(Player player) => update(players).replace(player);
  Future deletePlayer(Player player) => delete(players).delete(player);
}
