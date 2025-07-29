import '../database.dart';

class DashboardMetricsViewTable extends SupabaseTable<DashboardMetricsViewRow> {
  @override
  String get tableName => 'dashboard_metrics_view';

  @override
  DashboardMetricsViewRow createRow(Map<String, dynamic> data) =>
      DashboardMetricsViewRow(data);
}

class DashboardMetricsViewRow extends SupabaseDataRow {
  DashboardMetricsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DashboardMetricsViewTable();

  String? get metricName => getField<String>('metric_name');
  set metricName(String? value) => setField<String>('metric_name', value);

  double? get metricValue => getField<double>('metric_value');
  set metricValue(double? value) => setField<double>('metric_value', value);

  String? get metricType => getField<String>('metric_type');
  set metricType(String? value) => setField<String>('metric_type', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  bool? get isPercentage => getField<bool>('is_percentage');
  set isPercentage(bool? value) => setField<bool>('is_percentage', value);

  String? get trendDirection => getField<String>('trend_direction');
  set trendDirection(String? value) =>
      setField<String>('trend_direction', value);

  double? get changePercentage => getField<double>('change_percentage');
  set changePercentage(double? value) =>
      setField<double>('change_percentage', value);

  String? get freshness => getField<String>('freshness');
  set freshness(String? value) => setField<String>('freshness', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
