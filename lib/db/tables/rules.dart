import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Rule')
class Rules extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
}
