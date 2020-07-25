import 'package:moor/moor.dart';

class GameLogs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get gameSessionId => integer()();
  TextColumn get action => text()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
