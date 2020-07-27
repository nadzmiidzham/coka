import 'package:coka/core/database/db.dart';
import 'package:coka/core/database/tables/status-impairment.table.dart';
import 'package:moor/moor.dart';

part 'status-impairment.dao.g.dart';

@UseDao(tables: [StatusImpairments])
class StatusImpairmentDao extends DatabaseAccessor<DB> with _$StatusImpairmentDaoMixin {
  StatusImpairmentDao(DB attachedDatabase) : super(attachedDatabase);

  Future<List<StatusImpairment>> getAllStatusImpairments() => select(statusImpairments).get();
  Stream<List<StatusImpairment>> watchAllStatusImpairments() => select(statusImpairments).watch();
  Future<int> insertStatusImpairment(StatusImpairmentsCompanion statusImpairment) => into(statusImpairments).insert(statusImpairment);
  Future updateStatusImpairment(StatusImpairmentsCompanion statusImpairment) => update(statusImpairments).replace(statusImpairment);
  Future deleteStatusImpairment(StatusImpairmentsCompanion statusImpairment) => delete(statusImpairments).delete(statusImpairment);
}
