import 'package:moor/moor.dart';

class PlayerStatusImpairments extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get playerId => integer()();
  IntColumn get statusImpairmentId => integer()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
