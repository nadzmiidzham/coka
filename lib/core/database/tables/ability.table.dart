import 'package:moor/moor.dart';

@DataClassName('Ability')
class Abilities extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get imagePath => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get config => text()();
  TextColumn get difficultyCode => text()();
  IntColumn get value => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}
