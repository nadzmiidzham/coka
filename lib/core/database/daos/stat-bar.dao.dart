import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/stat-bar.table.dart';
import 'package:moor/moor.dart';

part 'stat-bar.dao.g.dart';

@UseDao(tables: [StatBars])
class StatBarDao extends DatabaseAccessor<DB> with _$StatBarDaoMixin {
  StatBarDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<StatBar>> getAllStatBars() => select(statBars).get();
  Stream<List<StatBar>> watchAllStatBars() => select(statBars).watch();
  Future<int> insertStatBar(StatBarsCompanion statBar) => into(statBars).insert(statBar);
  Future updateStatBar(StatBarsCompanion statBar) => update(statBars).replace(statBar);
  Future deleteStatBar(StatBarsCompanion statBar) => delete(statBars).delete(statBar);
}
