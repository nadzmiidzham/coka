import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/worker.table.dart';
import 'package:moor/moor.dart';

part 'worker.dao.g.dart';

@UseDao(tables: [Workers])
class WorkerDao extends DatabaseAccessor<DB> with _$WorkerDaoMixin {
  WorkerDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Worker>> getAllWorkers() => select(workers).get();
  Stream<List<Worker>> watchAllWorkers() => select(workers).watch();
  Future<int> insertWorker(WorkersCompanion worker) => into(workers).insert(worker);
  Future updateWorker(WorkersCompanion worker) => update(workers).replace(worker);
  Future deleteWorker(WorkersCompanion worker) => delete(workers).delete(worker);
}
