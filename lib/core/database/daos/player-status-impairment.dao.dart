import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/player-status-impairment.table.dart';
import 'package:moor/moor.dart';

part 'player-status-impairment.dao.g.dart';

@UseDao(tables: [PlayerStatusImpairments])
class PlayerStatusImpairmentDao extends DatabaseAccessor<DB> with _$PlayerStatusImpairmentDaoMixin {
  PlayerStatusImpairmentDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<PlayerStatusImpairment>> getAllPlayerStatusImpairments() => select(playerStatusImpairments).get();
  Stream<List<PlayerStatusImpairment>> watchAllPlayerStatusImpairments() => select(playerStatusImpairments).watch();
  Future<int> insertPlayerStatusImpairment(PlayerStatusImpairmentsCompanion playerStatusImpairment) => into(playerStatusImpairments).insert(playerStatusImpairment);
  Future updatePlayerStatusImpairment(PlayerStatusImpairmentsCompanion playerStatusImpairment) => update(playerStatusImpairments).replace(playerStatusImpairment);
  Future deletePlayerStatusImpairment(PlayerStatusImpairmentsCompanion playerStatusImpairment) => delete(playerStatusImpairments).delete(playerStatusImpairment);
}
