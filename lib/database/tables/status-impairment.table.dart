import 'package:moor/moor.dart';

class StatusImpairments extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get imagePath => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  IntColumn get value => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
