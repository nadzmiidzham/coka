import 'package:moor/moor.dart';

class Scenarios extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get storyId => integer()();
  TextColumn get introImagePath => text()();
  TextColumn get setupImagePath => text()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  TextColumn get config => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
