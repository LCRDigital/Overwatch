import '../database.dart';

class ActivitySummaryTable extends SupabaseTable<ActivitySummaryRow> {
  @override
  String get tableName => 'activity_summary';

  @override
  ActivitySummaryRow createRow(Map<String, dynamic> data) =>
      ActivitySummaryRow(data);
}

class ActivitySummaryRow extends SupabaseDataRow {
  ActivitySummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActivitySummaryTable();

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  int? get totalActivities => getField<int>('total_activities');
  set totalActivities(int? value) => setField<int>('total_activities', value);

  int? get lastHour => getField<int>('last_hour');
  set lastHour(int? value) => setField<int>('last_hour', value);

  int? get last24Hours => getField<int>('last_24_hours');
  set last24Hours(int? value) => setField<int>('last_24_hours', value);

  DateTime? get lastActivity => getField<DateTime>('last_activity');
  set lastActivity(DateTime? value) =>
      setField<DateTime>('last_activity', value);

  int? get syncedCount => getField<int>('synced_count');
  set syncedCount(int? value) => setField<int>('synced_count', value);

  int? get pendingSync => getField<int>('pending_sync');
  set pendingSync(int? value) => setField<int>('pending_sync', value);
}
