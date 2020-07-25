import 'package:moor/moor.dart';

class ItemStorages extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get gameSessionId => integer()();
  IntColumn get itemId => integer()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
