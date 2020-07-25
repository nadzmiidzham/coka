import 'package:coka/database/db.dart';
import 'package:coka/database/tables/worker.table.dart';
import 'package:moor/moor.dart';

part 'worker.dao.g.dart';

@UseDao(tables: [Workers])
class WorkerDao extends DatabaseAccessor<DB> with _$WorkerDaoMixin {
  WorkerDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<Worker>> getAllWorkers() => select(workers).get();
  Stream<List<Worker>> watchAllWorkers() => select(workers).watch();
  Future<int> insertWorker(Worker worker) => into(workers).insert(worker);
  Future updateWorker(Worker worker) => update(workers).replace(worker);
  Future deleteWorker(Worker worker) => delete(workers).delete(worker);
}
