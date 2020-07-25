import 'package:coka/database/db.dart';
import 'package:coka/database/tables/worker-item.table.dart';
import 'package:moor/moor.dart';

part 'worker-item.dao.g.dart';

@UseDao(tables: [WorkerItems])
class WorkerItemDao extends DatabaseAccessor<DB> with _$WorkerItemDaoMixin {
  WorkerItemDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<WorkerItem>> getAllWorkerItems() => select(workerItems).get();
  Stream<List<WorkerItem>> watchAllWorkerItems() => select(workerItems).watch();
  Future<int> insertWorkerItem(WorkerItem workerItem) => into(workerItems).insert(workerItem);
  Future updateWorkerItem(WorkerItem workerItem) => update(workerItems).replace(workerItem);
  Future deleteWorkerItem(WorkerItem workerItem) => delete(workerItems).delete(workerItem);
}
