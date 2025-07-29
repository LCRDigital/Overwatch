import '../database.dart';

class CdcEventsTable extends SupabaseTable<CdcEventsRow> {
  @override
  String get tableName => 'cdc_events';

  @override
  CdcEventsRow createRow(Map<String, dynamic> data) => CdcEventsRow(data);
}

class CdcEventsRow extends SupabaseDataRow {
  CdcEventsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CdcEventsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get tableNameField => getField<String>('table_name')!;
  set tableNameField(String value) => setField<String>('table_name', value);

  String get operation => getField<String>('operation')!;
  set operation(String value) => setField<String>('operation', value);

  String get recordId => getField<String>('record_id')!;
  set recordId(String value) => setField<String>('record_id', value);

  dynamic get oldData => getField<dynamic>('old_data');
  set oldData(dynamic value) => setField<dynamic>('old_data', value);

  dynamic get newData => getField<dynamic>('new_data');
  set newData(dynamic value) => setField<dynamic>('new_data', value);

  List<String> get changedFields => getListField<String>('changed_fields');
  set changedFields(List<String>? value) =>
      setListField<String>('changed_fields', value);

  String? get changedBy => getField<String>('changed_by');
  set changedBy(String? value) => setField<String>('changed_by', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  DateTime? get capturedAt => getField<DateTime>('captured_at');
  set capturedAt(DateTime? value) => setField<DateTime>('captured_at', value);

  bool? get processed => getField<bool>('processed');
  set processed(bool? value) => setField<bool>('processed', value);

  DateTime? get processedAt => getField<DateTime>('processed_at');
  set processedAt(DateTime? value) => setField<DateTime>('processed_at', value);

  String? get syncStatus => getField<String>('sync_status');
  set syncStatus(String? value) => setField<String>('sync_status', value);

  String? get errorMessage => getField<String>('error_message');
  set errorMessage(String? value) => setField<String>('error_message', value);

  int? get retryCount => getField<int>('retry_count');
  set retryCount(int? value) => setField<int>('retry_count', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);
}
