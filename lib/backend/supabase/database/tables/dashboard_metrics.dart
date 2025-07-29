import '../database.dart';

class DashboardMetricsTable extends SupabaseTable<DashboardMetricsRow> {
  @override
  String get tableName => 'dashboard_metrics';

  @override
  DashboardMetricsRow createRow(Map<String, dynamic> data) =>
      DashboardMetricsRow(data);
}

class DashboardMetricsRow extends SupabaseDataRow {
  DashboardMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DashboardMetricsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get metricName => getField<String>('metric_name')!;
  set metricName(String value) => setField<String>('metric_name', value);

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

  double? get targetValue => getField<double>('target_value');
  set targetValue(double? value) => setField<double>('target_value', value);

  bool? get isPercentage => getField<bool>('is_percentage');
  set isPercentage(bool? value) => setField<bool>('is_percentage', value);

  String? get trendDirection => getField<String>('trend_direction');
  set trendDirection(String? value) =>
      setField<String>('trend_direction', value);

  double? get previousValue => getField<double>('previous_value');
  set previousValue(double? value) => setField<double>('previous_value', value);

  double? get changePercentage => getField<double>('change_percentage');
  set changePercentage(double? value) =>
      setField<double>('change_percentage', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
