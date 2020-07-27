import 'package:coka/core/database/db.dart';
import 'package:kiwi/kiwi.dart';

part 'injector.g.dart';

abstract class Injector {
  @Register.singleton(DB)
  void _configure();

  static KiwiContainer get container => KiwiContainer();

  static void setup() {
    _$Injector()._configure();
  }
}
