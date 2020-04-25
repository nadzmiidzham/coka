import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Player')
class Players extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get abilities => text().nullable().withDefault(null)();
  TextColumn get statusAilments => text().nullable()();

  TextColumn get image => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  IntColumn get level => integer()();
  IntColumn get maxHp => integer()();
  IntColumn get curHp => integer()();
}
