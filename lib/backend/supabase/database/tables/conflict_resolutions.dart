import '../database.dart';

class ConflictResolutionsTable extends SupabaseTable<ConflictResolutionsRow> {
  @override
  String get tableName => 'conflict_resolutions';

  @override
  ConflictResolutionsRow createRow(Map<String, dynamic> data) =>
      ConflictResolutionsRow(data);
}

class ConflictResolutionsRow extends SupabaseDataRow {
  ConflictResolutionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConflictResolutionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get tableNameField => getField<String>('table_name')!;
  set tableNameField(String value) => setField<String>('table_name', value);

  String get recordId => getField<String>('record_id')!;
  set recordId(String value) => setField<String>('record_id', value);

  String get fieldName => getField<String>('field_name')!;
  set fieldName(String value) => setField<String>('field_name', value);

  dynamic get resolvedValue => getField<dynamic>('resolved_value');
  set resolvedValue(dynamic value) =>
      setField<dynamic>('resolved_value', value);

  String? get resolutionReason => getField<String>('resolution_reason');
  set resolutionReason(String? value) =>
      setField<String>('resolution_reason', value);

  DateTime get resolvedAt => getField<DateTime>('resolved_at')!;
  set resolvedAt(DateTime value) => setField<DateTime>('resolved_at', value);

  String get resolvedBy => getField<String>('resolved_by')!;
  set resolvedBy(String value) => setField<String>('resolved_by', value);
}
