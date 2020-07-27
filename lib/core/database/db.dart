import 'dart:io';
import 'dart:typed_data';

import 'package:coka/core/database/daos/ability.dao.dart';
import 'package:coka/core/database/daos/creature.dao.dart';
import 'package:coka/core/database/daos/creature-ability.dao.dart';
import 'package:coka/core/database/daos/creature-status-impairment.dao.dart';
import 'package:coka/core/database/daos/creature-template.dao.dart';
import 'package:coka/core/database/daos/game-log.dao.dart';
import 'package:coka/core/database/daos/game-session.dao.dart';
import 'package:coka/core/database/daos/item.dao.dart';
import 'package:coka/core/database/daos/item-storage.dao.dart';
import 'package:coka/core/database/daos/player.dao.dart';
import 'package:coka/core/database/daos/player-status-impairment.dao.dart';
import 'package:coka/core/database/daos/player-template.dao.dart';
import 'package:coka/core/database/daos/scenario.dao.dart';
import 'package:coka/core/database/daos/stat-bar.dao.dart';
import 'package:coka/core/database/daos/status-impairment.dao.dart';
import 'package:coka/core/database/daos/story.dao.dart';
import 'package:coka/core/database/daos/worker.dao.dart';
import 'package:coka/core/database/daos/worker-item.dao.dart';
import 'package:coka/core/database/tables/ability.table.dart';
import 'package:coka/core/database/tables/creature.table.dart';
import 'package:coka/core/database/tables/creature-ability.table.dart';
import 'package:coka/core/database/tables/creature-status-impairment.table.dart';
import 'package:coka/core/database/tables/creature-template.table.dart';
import 'package:coka/core/database/tables/game-log.table.dart';
import 'package:coka/core/database/tables/game-session.table.dart';
import 'package:coka/core/database/tables/item.table.dart';
import 'package:coka/core/database/tables/item-storage.table.dart';
import 'package:coka/core/database/tables/player.table.dart';
import 'package:coka/core/database/tables/player-status-impairment.table.dart';
import 'package:coka/core/database/tables/player-template.table.dart';
import 'package:coka/core/database/tables/scenario.table.dart';
import 'package:coka/core/database/tables/stat-bar.table.dart';
import 'package:coka/core/database/tables/status-impairment.table.dart';
import 'package:coka/core/database/tables/story.table.dart';
import 'package:coka/core/database/tables/worker.table.dart';
import 'package:coka/core/database/tables/worker-item.table.dart';
import 'package:flutter/services.dart';
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
    beforeOpen: (details) async {
      // if first time, replace db file with seeded db file
      if(details.wasCreated) {
        final seederDbFile = await rootBundle.load('files/db.sqlite');
        final generatedDbFile = File(path.join((await getApplicationDocumentsDirectory()).path, 'db.sqlite'));

        if(await generatedDbFile.exists()) {
          await replaceDBFile(seederDbFile, generatedDbFile);
        }
      }
    }
  );

  Future replaceDBFile(ByteData data, File file) async {
    return file.writeAsBytes(data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
  }
}
