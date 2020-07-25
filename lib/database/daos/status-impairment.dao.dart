import 'package:coka/database/db.dart';
import 'package:coka/database/tables/status-impairment.table.dart';
import 'package:moor/moor.dart';

part 'status-impairment.dao.g.dart';

@UseDao(tables: [StatusImpairments])
class StatusImpairmentDao extends DatabaseAccessor<DB> with _$StatusImpairmentDaoMixin {
  StatusImpairmentDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<StatusImpairment>> getAllStatusImpairments() => select(statusImpairments).get();
  Stream<List<StatusImpairment>> watchAllStatusImpairments() => select(statusImpairments).watch();
  Future<int> insertStatusImpairment(StatusImpairment statusImpairment) => into(statusImpairments).insert(statusImpairment);
  Future updateStatusImpairment(StatusImpairment statusImpairment) => update(statusImpairments).replace(statusImpairment);
  Future deleteStatusImpairment(StatusImpairment statusImpairment) => delete(statusImpairments).delete(statusImpairment);
}
