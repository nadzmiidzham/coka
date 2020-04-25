import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Creature')
class Creatures extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get playerId => integer().customConstraint('REFERENCES players(id)')();
  TextColumn get abilities => text().nullable().withDefault(null)();
  TextColumn get statusAilments => text().nullable().withDefault(null)();

  TextColumn get image => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  IntColumn get xp => integer()();
  IntColumn get maxHp => integer()();
  IntColumn get curHp => integer()();
}
