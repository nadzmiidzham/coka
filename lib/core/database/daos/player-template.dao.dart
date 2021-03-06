import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/player-template.table.dart';
import 'package:moor/moor.dart';

part 'player-template.dao.g.dart';

@UseDao(tables: [PlayerTemplates])
class PlayerTemplateDao extends DatabaseAccessor<DB> with _$PlayerTemplateDaoMixin {
  PlayerTemplateDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<PlayerTemplate>> getAllPlayerTemplates() => select(playerTemplates).get();
  Stream<List<PlayerTemplate>> watchAllPlayerTemplates() => select(playerTemplates).watch();
  Future<int> insertPlayerTemplate(PlayerTemplatesCompanion playerTemplate) => into(playerTemplates).insert(playerTemplate);
  Future updatePlayerTemplate(PlayerTemplatesCompanion playerTemplate) => update(playerTemplates).replace(playerTemplate);
  Future deletePlayerTemplate(PlayerTemplatesCompanion playerTemplate) => delete(playerTemplates).delete(playerTemplate);
}
