import 'package:coka/database/db.dart';
import 'package:coka/database/tables/player-template.table.dart';
import 'package:moor/moor.dart';

part 'player-template.dao.g.dart';

@UseDao(tables: [PlayerTemplates])
class PlayerTemplateDao extends DatabaseAccessor<DB> with _$PlayerTemplateDaoMixin {
  PlayerTemplateDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<PlayerTemplate>> getAllPlayerTemplates() => select(playerTemplates).get();
  Stream<List<PlayerTemplate>> watchAllPlayerTemplates() => select(playerTemplates).watch();
  Future<int> insertPlayerTemplate(PlayerTemplate playerTemplate) => into(playerTemplates).insert(playerTemplate);
  Future updatePlayerTemplate(PlayerTemplate playerTemplate) => update(playerTemplates).replace(playerTemplate);
  Future deletePlayerTemplate(PlayerTemplate playerTemplate) => delete(playerTemplates).delete(playerTemplate);
}
