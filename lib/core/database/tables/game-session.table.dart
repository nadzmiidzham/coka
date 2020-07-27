import 'package:moor/moor.dart';

class GameSessions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get storyId => integer()();
  TextColumn get resultCode => text()();
  TextColumn get timeCode => text()();
  IntColumn get hope => integer()();
  IntColumn get morale => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
