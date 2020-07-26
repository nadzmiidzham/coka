import 'package:moor/moor.dart';

class StatBars extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get level => integer()();
  IntColumn get xp => integer()();
  IntColumn get hp => integer()();
  TextColumn get config => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
