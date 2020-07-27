import 'package:moor/moor.dart';

class Creatures extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get creatureTemplateId => integer()();
  IntColumn get gameSessionId => integer()();
  IntColumn get playerId => integer()();
  IntColumn get statBarId => integer()();
  TextColumn get imagePath => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  IntColumn get xp => integer()();
  IntColumn get curHp => integer()();
  IntColumn get maxHp => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
