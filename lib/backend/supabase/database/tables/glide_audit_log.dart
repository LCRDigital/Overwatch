import '../database.dart';

class GlideAuditLogTable extends SupabaseTable<GlideAuditLogRow> {
  @override
  String get tableName => 'glide_audit_log';

  @override
  GlideAuditLogRow createRow(Map<String, dynamic> data) =>
      GlideAuditLogRow(data);
}

class GlideAuditLogRow extends SupabaseDataRow {
  GlideAuditLogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GlideAuditLogTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get rowId => getField<String>('row_id')!;
  set rowId(String value) => setField<String>('row_id', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get master => getField<String>('master');
  set master(String? value) => setField<String>('master', value);

  String? get linkToPage => getField<String>('link_to_page');
  set linkToPage(String? value) => setField<String>('link_to_page', value);

  String? get deal => getField<String>('deal');
  set deal(String? value) => setField<String>('deal', value);

  String? get unitOrUnittype => getField<String>('unit_or_unittype');
  set unitOrUnittype(String? value) =>
      setField<String>('unit_or_unittype', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  bool? get raffleTicket => getField<bool>('raffle_ticket');
  set raffleTicket(bool? value) => setField<bool>('raffle_ticket', value);

  String? get app => getField<String>('app');
  set app(String? value) => setField<String>('app', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
