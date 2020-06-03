import 'package:coka/db/tables/abilities.dart';
import 'package:coka/db/tables/creatures.dart';
import 'package:coka/db/tables/items.dart';
import 'package:coka/db/tables/players.dart';
import 'package:coka/db/tables/rules.dart';
import 'package:coka/db/tables/status_ailments.dart';
import 'package:coka/db/tables/workers.dart';
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
