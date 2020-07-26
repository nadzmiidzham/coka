import 'package:moor/moor.dart';

@DataClassName('CreatureAbility')
class CreatureAbilities extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get creatureId => integer()();
  IntColumn get abilityId => integer()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
