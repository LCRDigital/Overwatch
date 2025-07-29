import '../database.dart';

class SyncJobLogsTable extends SupabaseTable<SyncJobLogsRow> {
  @override
  String get tableName => 'sync_job_logs';

  @override
  SyncJobLogsRow createRow(Map<String, dynamic> data) => SyncJobLogsRow(data);
}

class SyncJobLogsRow extends SupabaseDataRow {
  SyncJobLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SyncJobLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get jobId => getField<String>('job_id')!;
  set jobId(String value) => setField<String>('job_id', value);

  String get jobType => getField<String>('job_type')!;
  set jobType(String value) => setField<String>('job_type', value);

  String get event => getField<String>('event')!;
  set event(String value) => setField<String>('event', value);

  String get source => getField<String>('source')!;
  set source(String value) => setField<String>('source', value);

  String get target => getField<String>('target')!;
  set target(String value) => setField<String>('target', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  String? get recordId => getField<String>('record_id');
  set recordId(String? value) => setField<String>('record_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get retryCount => getField<int>('retry_count');
  set retryCount(int? value) => setField<int>('retry_count', value);

  dynamic get details => getField<dynamic>('details');
  set details(dynamic value) => setField<dynamic>('details', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
