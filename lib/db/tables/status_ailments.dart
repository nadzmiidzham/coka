import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('StatusAilment')
class StatusAilments extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get rules => text().nullable().withDefault(null)();

  TextColumn get icon => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  IntColumn get value => integer()();
}
