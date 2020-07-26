import 'package:moor/moor.dart';

class WorkerItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get workerId => integer()();
  IntColumn get itemId => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
