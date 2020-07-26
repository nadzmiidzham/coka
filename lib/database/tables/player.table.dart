import 'package:moor/moor.dart';

class Players extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get playerTemplateId => integer()();
  IntColumn get gameSessionId => integer()();
  TextColumn get imagePath => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get colorCode => text()();
  IntColumn get level => integer()();
  IntColumn get curHp => integer()();
  IntColumn get maxHp => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
