import 'package:coka/database/db.dart';
import 'package:coka/database/tables/game-session.table.dart';
import 'package:coka/database/tables/item-storage.table.dart';
import 'package:coka/database/tables/item.table.dart';
import 'package:moor/moor.dart';

part 'item-storage.dao.g.dart';

@UseDao(tables: [ItemStorages])
class ItemStorageDao extends DatabaseAccessor<DB> with _$ItemStorageDaoMixin {
  ItemStorageDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<ItemStorage>> getAllItemStorages() => select(itemStorages).get();
  Stream<List<ItemStorage>> watchAllItemStorages() => select(itemStorages).watch();
  Future<int> insertItemStorage(ItemStorage itemStorage) => into(itemStorages).insert(itemStorage);
  Future updateItemStorage(ItemStorage itemStorage) => update(itemStorages).replace(itemStorage);
  Future deleteItemStorage(ItemStorage itemStorage) => delete(itemStorages).delete(itemStorage);
}
