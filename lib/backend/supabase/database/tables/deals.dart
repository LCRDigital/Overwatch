import '../database.dart';

class DealsTable extends SupabaseTable<DealsRow> {
  @override
  String get tableName => 'deals';

  @override
  DealsRow createRow(Map<String, dynamic> data) => DealsRow(data);
}

class DealsRow extends SupabaseDataRow {
  DealsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DealsTable();

  String get deal => getField<String>('deal')!;
  set deal(String value) => setField<String>('deal', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get projectStatus => getField<String>('project_status');
  set projectStatus(String? value) => setField<String>('project_status', value);

  String? get rowId => getField<String>('row_id');
  set rowId(String? value) => setField<String>('row_id', value);

  String? get project => getField<String>('project');
  set project(String? value) => setField<String>('project', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  double? get tax => getField<double>('tax');
  set tax(double? value) => setField<double>('tax', value);

  String? get imageLogo => getField<String>('image_logo');
  set imageLogo(String? value) => setField<String>('image_logo', value);

  String? get assigned => getField<String>('assigned');
  set assigned(String? value) => setField<String>('assigned', value);

  String? get imageBuilding => getField<String>('image_building');
  set imageBuilding(String? value) => setField<String>('image_building', value);

  String? get startedBy => getField<String>('started_by');
  set startedBy(String? value) => setField<String>('started_by', value);

  DateTime? get startedTime => getField<DateTime>('started_time');
  set startedTime(DateTime? value) => setField<DateTime>('started_time', value);

  String? get completedBy => getField<String>('completed_by');
  set completedBy(String? value) => setField<String>('completed_by', value);

  DateTime? get completedTime => getField<DateTime>('completed_time');
  set completedTime(DateTime? value) =>
      setField<DateTime>('completed_time', value);

  String? get dealNumber => getField<String>('deal_number');
  set dealNumber(String? value) => setField<String>('deal_number', value);

  bool? get requireClientApproval => getField<bool>('require_client_approval');
  set requireClientApproval(bool? value) =>
      setField<bool>('require_client_approval', value);

  bool? get showIssues => getField<bool>('show_issues');
  set showIssues(bool? value) => setField<bool>('show_issues', value);

  DateTime? get dateJan1st2025 => getField<DateTime>('date_jan_1st_2025');
  set dateJan1st2025(DateTime? value) =>
      setField<DateTime>('date_jan_1st_2025', value);

  String? get rowId => getField<String>('__row_id');
  set rowId(String? value) => setField<String>('__row_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get syncedFrom => getField<String>('synced_from');
  set syncedFrom(String? value) => setField<String>('synced_from', value);

  int? get totalUnits => getField<int>('total_units');
  set totalUnits(int? value) => setField<int>('total_units', value);

  int? get unitsInstalled => getField<int>('units_installed');
  set unitsInstalled(int? value) => setField<int>('units_installed', value);

  double? get completionPercentage => getField<double>('completion_percentage');
  set completionPercentage(double? value) =>
      setField<double>('completion_percentage', value);

  int? get totalSkus => getField<int>('total_skus');
  set totalSkus(int? value) => setField<int>('total_skus', value);
}
