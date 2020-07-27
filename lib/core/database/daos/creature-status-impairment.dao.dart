import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/creature-status-impairment.table.dart';
import 'package:moor/moor.dart';

part 'creature-status-impairment.dao.g.dart';

@UseDao(tables: [CreatureStatusImpairments])
class CreatureStatusImpairmentDao extends DatabaseAccessor<DB> with _$CreatureStatusImpairmentDaoMixin {
  CreatureStatusImpairmentDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<CreatureStatusImpairment>> getAllCreatureStatusImpairments() => select(creatureStatusImpairments).get();
  Stream<List<CreatureStatusImpairment>> watchAllCreatureStatusImpairments() => select(creatureStatusImpairments).watch();
  Future<int> insertCreatureStatusImpairment(CreatureStatusImpairmentsCompanion creatureStatusImpairment) => into(creatureStatusImpairments).insert(creatureStatusImpairment);
  Future updateCreatureStatusImpairment(CreatureStatusImpairmentsCompanion creatureStatusImpairment) => update(creatureStatusImpairments).replace(creatureStatusImpairment);
  Future deleteCreatureStatusImpairment(CreatureStatusImpairmentsCompanion creatureStatusImpairment) => delete(creatureStatusImpairments).delete(creatureStatusImpairment);
}
