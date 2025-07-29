import '../database.dart';

class DashboardOverviewTable extends SupabaseTable<DashboardOverviewRow> {
  @override
  String get tableName => 'dashboard_overview';

  @override
  DashboardOverviewRow createRow(Map<String, dynamic> data) =>
      DashboardOverviewRow(data);
}

class DashboardOverviewRow extends SupabaseDataRow {
  DashboardOverviewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DashboardOverviewTable();

  int? get totalDeals => getField<int>('total_deals');
  set totalDeals(int? value) => setField<int>('total_deals', value);

  int? get notStartedDeals => getField<int>('not_started_deals');
  set notStartedDeals(int? value) => setField<int>('not_started_deals', value);

  int? get inProgressDeals => getField<int>('in_progress_deals');
  set inProgressDeals(int? value) => setField<int>('in_progress_deals', value);

  int? get completedDeals => getField<int>('completed_deals');
  set completedDeals(int? value) => setField<int>('completed_deals', value);

  int? get totalUnitsAllDeals => getField<int>('total_units_all_deals');
  set totalUnitsAllDeals(int? value) =>
      setField<int>('total_units_all_deals', value);

  int? get totalUnitsInstalled => getField<int>('total_units_installed');
  set totalUnitsInstalled(int? value) =>
      setField<int>('total_units_installed', value);

  double? get avgCompletionPercentage =>
      getField<double>('avg_completion_percentage');
  set avgCompletionPercentage(double? value) =>
      setField<double>('avg_completion_percentage', value);

  int? get totalSkus => getField<int>('total_skus');
  set totalSkus(int? value) => setField<int>('total_skus', value);
}
