import '../database.dart';

class SyncSystemStatusTable extends SupabaseTable<SyncSystemStatusRow> {
  @override
  String get tableName => 'sync_system_status';

  @override
  SyncSystemStatusRow createRow(Map<String, dynamic> data) =>
      SyncSystemStatusRow(data);
}

class SyncSystemStatusRow extends SupabaseDataRow {
  SyncSystemStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SyncSystemStatusTable();

  String? get component => getField<String>('component');
  set component(String? value) => setField<String>('component', value);

  int? get totalRecords => getField<int>('total_records');
  set totalRecords(int? value) => setField<int>('total_records', value);

  int? get lastHour => getField<int>('last_hour');
  set lastHour(int? value) => setField<int>('last_hour', value);

  int? get last24h => getField<int>('last_24h');
  set last24h(int? value) => setField<int>('last_24h', value);

  DateTime? get latestActivity => getField<DateTime>('latest_activity');
  set latestActivity(DateTime? value) =>
      setField<DateTime>('latest_activity', value);
}
