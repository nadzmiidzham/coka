import 'package:coka/database/db.dart';
import 'package:coka/database/tables/creature-template.table.dart';
import 'package:moor/moor.dart';

part 'creature-template.dao.g.dart';

@UseDao(tables: [CreatureTemplates])
class CreatureTemplateDao extends DatabaseAccessor<DB> with _$CreatureTemplateDaoMixin {
  CreatureTemplateDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<CreatureTemplate>> getAllCreatureTemplates() => select(creatureTemplates).get();
  Stream<List<CreatureTemplate>> watchAllCreatureTemplates() => select(creatureTemplates).watch();
  Future<int> insertCreatureTemplate(CreatureTemplate creatureTemplate) => into(creatureTemplates).insert(creatureTemplate);
  Future updateCreatureTemplate(CreatureTemplate creatureTemplate) => update(creatureTemplates).replace(creatureTemplate);
  Future deleteCreatureTemplate(CreatureTemplate creatureTemplate) => delete(creatureTemplates).delete(creatureTemplate);
}
