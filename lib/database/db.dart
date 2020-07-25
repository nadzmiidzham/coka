import 'dart:io';

import 'package:coka/database/daos/ability.dao.dart';
import 'package:coka/database/daos/creature-ability.dao.dart';
import 'package:coka/database/daos/creature-status-impairment.dao.dart';
import 'package:coka/database/daos/creature-template.dao.dart';
import 'package:coka/database/daos/creature.dao.dart';
import 'package:coka/database/daos/game-log.dao.dart';
import 'package:coka/database/daos/game-session.dao.dart';
import 'package:coka/database/daos/item-storage.dao.dart';
import 'package:coka/database/daos/item.dao.dart';
import 'package:coka/database/daos/player-status-impairment.dao.dart';
import 'package:coka/database/daos/player-template.dao.dart';
import 'package:coka/database/daos/player.dao.dart';
import 'package:coka/database/daos/scenario.dao.dart';
import 'package:coka/database/daos/stat-bar.dao.dart';
import 'package:coka/database/daos/status-impairment.dao.dart';
import 'package:coka/database/daos/story.dao.dart';
import 'package:coka/database/daos/worker-item.dao.dart';
import 'package:coka/database/daos/worker.dao.dart';
import 'package:coka/database/tables/ability.table.dart';
import 'package:coka/database/tables/creature-ability.table.dart';
import 'package:coka/database/tables/creature-status-impairment.table.dart';
import 'package:coka/database/tables/creature-template.table.dart';
import 'package:coka/database/tables/creature.table.dart';
import 'package:coka/database/tables/game-log.table.dart';
import 'package:coka/database/tables/game-session.table.dart';
import 'package:coka/database/tables/item-storage.table.dart';
import 'package:coka/database/tables/item.table.dart';
import 'package:coka/database/tables/player-status-impairment.table.dart';
import 'package:coka/database/tables/player-template.table.dart';
import 'package:coka/database/tables/player.table.dart';
import 'package:coka/database/tables/scenario.table.dart';
import 'package:coka/database/tables/stat-bar.table.dart';
import 'package:coka/database/tables/status-impairment.table.dart';
import 'package:coka/database/tables/story.table.dart';
import 'package:coka/database/tables/worker-item.table.dart';
import 'package:coka/database/tables/worker.table.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(
    tables: [
      Abilities,
      Creatures,
      CreatureAbilities,
      CreatureStatusImpairments,
      CreatureTemplates,
      GameLogs,
      GameSessions,
      Items,
      ItemStorages,
      Players,
      PlayerStatusImpairments,
      PlayerTemplates,
      Scenarios,
      StatBars,
      StatusImpairments,
      Stories,
      Workers,
      WorkerItems
    ],
    daos: [
      AbilityDao,
      CreatureDao,
      CreatureAbilityDao,
      CreatureStatusImpairmentDao,
      CreatureTemplateDao,
      GameLogDao,
      GameSessionDao,
      ItemDao,
      ItemStorageDao,
      PlayerDao,
      PlayerStatusImpairmentDao,
      PlayerTemplateDao,
      ScenarioDao,
      StatBarDao,
      StatusImpairmentDao,
      StoryDao,
      WorkerDao,
      WorkerItemDao
    ])
class DB extends _$DB {
  DB() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (migrator, from, to) async {}
  );
}
