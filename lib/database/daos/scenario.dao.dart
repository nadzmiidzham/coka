import 'package:coka/database/db.dart';
import 'package:coka/database/tables/scenario.table.dart';
import 'package:moor/moor.dart';

part 'scenario.dao.g.dart';

@UseDao(tables: [Scenarios])
class ScenarioDao extends DatabaseAccessor<DB> with _$ScenarioDaoMixin {
  ScenarioDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Scenario>> getAllScenarios() => select(scenarios).get();
  Stream<List<Scenario>> watchAllScenarios() => select(scenarios).watch();
  Future<int> insertScenario(Scenario scenario) => into(scenarios).insert(scenario);
  Future updateScenario(Scenario scenario) => update(scenarios).replace(scenario);
  Future deleteScenario(Scenario scenario) => delete(scenarios).delete(scenario);
}
