import '../database.dart';

class DealsWithRecentActivityTable
    extends SupabaseTable<DealsWithRecentActivityRow> {
  @override
  String get tableName => 'deals_with_recent_activity';

  @override
  DealsWithRecentActivityRow createRow(Map<String, dynamic> data) =>
      DealsWithRecentActivityRow(data);
}

class DealsWithRecentActivityRow extends SupabaseDataRow {
  DealsWithRecentActivityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DealsWithRecentActivityTable();

  String? get deal => getField<String>('deal');
  set deal(String? value) => setField<String>('deal', value);

  String? get project => getField<String>('project');
  set project(String? value) => setField<String>('project', value);

  String? get projectStatus => getField<String>('project_status');
  set projectStatus(String? value) => setField<String>('project_status', value);

  int? get totalUnits => getField<int>('total_units');
  set totalUnits(int? value) => setField<int>('total_units', value);

  int? get unitsInstalled => getField<int>('units_installed');
  set unitsInstalled(int? value) => setField<int>('units_installed', value);

  double? get completionPercentage => getField<double>('completion_percentage');
  set completionPercentage(double? value) =>
      setField<double>('completion_percentage', value);

  int? get activitiesLast24h => getField<int>('activities_last_24h');
  set activitiesLast24h(int? value) =>
      setField<int>('activities_last_24h', value);

  DateTime? get lastActivity => getField<DateTime>('last_activity');
  set lastActivity(DateTime? value) =>
      setField<DateTime>('last_activity', value);

  String? get activeUsers => getField<String>('active_users');
  set activeUsers(String? value) => setField<String>('active_users', value);
}
