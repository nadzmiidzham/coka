import 'package:coka/database/db.dart';
import 'package:coka/database/tables/game-session.table.dart';
import 'package:coka/database/tables/item.table.dart';
import 'package:moor/moor.dart';

part 'item.dao.g.dart';

@UseDao(tables: [Items])
class ItemDao extends DatabaseAccessor<DB> with _$ItemDaoMixin {
  ItemDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Item>> getAllItems() => select(items).get();
  Stream<List<Item>> watchAllItems() => select(items).watch();
  Future<int> insertItem(ItemsCompanion item) => into(items).insert(item);
  Future updateItem(ItemsCompanion item) => update(items).replace(item);
  Future deleteItem(ItemsCompanion item) => delete(items).delete(item);
}
