import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Item')
class Items extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get workerId => integer().customConstraint('REFERENCES workers(id)')();

  TextColumn get icon => text()();
  IntColumn get value => integer()();
}
