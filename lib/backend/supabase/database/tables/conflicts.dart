import '../database.dart';

class ConflictsTable extends SupabaseTable<ConflictsRow> {
  @override
  String get tableName => 'conflicts';

  @override
  ConflictsRow createRow(Map<String, dynamic> data) => ConflictsRow(data);
}

class ConflictsRow extends SupabaseDataRow {
  ConflictsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConflictsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get tableNameField => getField<String>('table_name')!;
  set tableNameField(String value) => setField<String>('table_name', value);

  String get recordId => getField<String>('record_id')!;
  set recordId(String value) => setField<String>('record_id', value);

  String get conflictType => getField<String>('conflict_type')!;
  set conflictType(String value) => setField<String>('conflict_type', value);

  String? get fieldName => getField<String>('field_name');
  set fieldName(String? value) => setField<String>('field_name', value);

  dynamic get versions => getField<dynamic>('versions')!;
  set versions(dynamic value) => setField<dynamic>('versions', value);

  DateTime get detectedAt => getField<DateTime>('detected_at')!;
  set detectedAt(DateTime value) => setField<DateTime>('detected_at', value);

  bool? get resolved => getField<bool>('resolved');
  set resolved(bool? value) => setField<bool>('resolved', value);

  String? get resolution => getField<String>('resolution');
  set resolution(String? value) => setField<String>('resolution', value);

  dynamic get resolvedValue => getField<dynamic>('resolved_value');
  set resolvedValue(dynamic value) =>
      setField<dynamic>('resolved_value', value);

  String? get resolvedBy => getField<String>('resolved_by');
  set resolvedBy(String? value) => setField<String>('resolved_by', value);

  DateTime? get resolvedAt => getField<DateTime>('resolved_at');
  set resolvedAt(DateTime? value) => setField<DateTime>('resolved_at', value);
}
