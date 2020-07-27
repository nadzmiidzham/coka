import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/worker-item.table.dart';
import 'package:moor/moor.dart';

part 'worker-item.dao.g.dart';

@UseDao(tables: [WorkerItems])
class WorkerItemDao extends DatabaseAccessor<DB> with _$WorkerItemDaoMixin {
  WorkerItemDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<WorkerItem>> getAllWorkerItems() => select(workerItems).get();
  Stream<List<WorkerItem>> watchAllWorkerItems() => select(workerItems).watch();
  Future<int> insertWorkerItem(WorkerItemsCompanion workerItem) => into(workerItems).insert(workerItem);
  Future updateWorkerItem(WorkerItemsCompanion workerItem) => update(workerItems).replace(workerItem);
  Future deleteWorkerItem(WorkerItemsCompanion workerItem) => delete(workerItems).delete(workerItem);
}
