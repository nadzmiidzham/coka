import 'package:moor/moor.dart';

class CreatureStatusImpairments extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get creatureId => integer()();
  IntColumn get statusImpairmentId => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
