import 'package:moor/moor.dart';

class Workers extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get playerId => integer()();
  IntColumn get no => integer()();
  TextColumn get colorCode => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
