import '../database.dart';

class RecentActivityTable extends SupabaseTable<RecentActivityRow> {
  @override
  String get tableName => 'recent_activity';

  @override
  RecentActivityRow createRow(Map<String, dynamic> data) =>
      RecentActivityRow(data);
}

class RecentActivityRow extends SupabaseDataRow {
  RecentActivityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecentActivityTable();

  String? get activityType => getField<String>('activity_type');
  set activityType(String? value) => setField<String>('activity_type', value);

  String? get dealId => getField<String>('deal_id');
  set dealId(String? value) => setField<String>('deal_id', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  DateTime? get activityTime => getField<DateTime>('activity_time');
  set activityTime(DateTime? value) =>
      setField<DateTime>('activity_time', value);

  String? get performedBy => getField<String>('performed_by');
  set performedBy(String? value) => setField<String>('performed_by', value);
}
