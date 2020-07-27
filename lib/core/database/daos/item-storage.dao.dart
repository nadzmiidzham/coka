import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/item-storage.table.dart';
import 'package:moor/moor.dart';

part 'item-storage.dao.g.dart';

@UseDao(tables: [ItemStorages])
class ItemStorageDao extends DatabaseAccessor<DB> with _$ItemStorageDaoMixin {
  ItemStorageDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<ItemStorage>> getAllItemStorages() => select(itemStorages).get();
  Stream<List<ItemStorage>> watchAllItemStorages() => select(itemStorages).watch();
  Future<int> insertItemStorage(ItemStoragesCompanion itemStorage) => into(itemStorages).insert(itemStorage);
  Future updateItemStorage(ItemStoragesCompanion itemStorage) => update(itemStorages).replace(itemStorage);
  Future deleteItemStorage(ItemStoragesCompanion itemStorage) => delete(itemStorages).delete(itemStorage);
}
