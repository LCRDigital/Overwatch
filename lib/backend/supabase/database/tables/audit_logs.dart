import '../database.dart';

class AuditLogsTable extends SupabaseTable<AuditLogsRow> {
  @override
  String get tableName => 'audit_logs';

  @override
  AuditLogsRow createRow(Map<String, dynamic> data) => AuditLogsRow(data);
}

class AuditLogsRow extends SupabaseDataRow {
  AuditLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AuditLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  dynamic get details => getField<dynamic>('details');
  set details(dynamic value) => setField<dynamic>('details', value);

  String? get appSection => getField<String>('app_section');
  set appSection(String? value) => setField<String>('app_section', value);

  String? get rowId => getField<String>('row_id');
  set rowId(String? value) => setField<String>('row_id', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
