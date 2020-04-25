import 'package:coka/db/abilities.dart';
import 'package:coka/db/creatures.dart';
import 'package:coka/db/items.dart';
import 'package:coka/db/players.dart';
import 'package:coka/db/rules.dart';
import 'package:coka/db/status_ailments.dart';
import 'package:coka/db/workers.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'db.g.dart';

@UseMoor(
  tables: [
    Rules,
    Abilities,
    Creatures,
    Players,
    Items,
    StatusAilments,
    Workers
  ],
  daos: [])
class DB extends _$DB {
  DB() : super((FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.sqlite',
    logStatements: true
  )));

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
      },
      onUpgrade: (migrator, from, to) async {}
  );
}
