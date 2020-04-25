import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Worker')
class Workers extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get playerId => integer().customConstraint('REFERENCES players(id)')();
  TextColumn get statusAilments => text().nullable().withDefault(null)();

  TextColumn get image => text()();
  IntColumn get no => integer()();
}
