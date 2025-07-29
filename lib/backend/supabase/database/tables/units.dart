import '../database.dart';

class UnitsTable extends SupabaseTable<UnitsRow> {
  @override
  String get tableName => 'units';

  @override
  UnitsRow createRow(Map<String, dynamic> data) => UnitsRow(data);
}

class UnitsRow extends SupabaseDataRow {
  UnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitsTable();

  String get dealTypeUnit => getField<String>('deal_type_unit')!;
  set dealTypeUnit(String value) => setField<String>('deal_type_unit', value);

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  DateTime? get dayDate => getField<DateTime>('day_date');
  set dayDate(DateTime? value) => setField<DateTime>('day_date', value);

  String? get unitType => getField<String>('unit_type');
  set unitType(String? value) => setField<String>('unit_type', value);

  String? get weekDay => getField<String>('week_day');
  set weekDay(String? value) => setField<String>('week_day', value);

  String? get deal => getField<String>('deal');
  set deal(String? value) => setField<String>('deal', value);

  double? get phase => getField<double>('phase');
  set phase(double? value) => setField<double>('phase', value);

  String? get unitStatus => getField<String>('unit_status');
  set unitStatus(String? value) => setField<String>('unit_status', value);

  bool? get today => getField<bool>('today');
  set today(bool? value) => setField<bool>('today', value);

  String? get photoPrecheckPhoto => getField<String>('photo_precheck_photo');
  set photoPrecheckPhoto(String? value) =>
      setField<String>('photo_precheck_photo', value);

  String? get photoFinalCheckup => getField<String>('photo_final_checkup');
  set photoFinalCheckup(String? value) =>
      setField<String>('photo_final_checkup', value);

  String? get floor => getField<String>('floor');
  set floor(String? value) => setField<String>('floor', value);

  String? get startedBy => getField<String>('started_by');
  set startedBy(String? value) => setField<String>('started_by', value);

  DateTime? get startedTime => getField<DateTime>('started_time');
  set startedTime(DateTime? value) => setField<DateTime>('started_time', value);

  String? get completedBy => getField<String>('completed_by');
  set completedBy(String? value) => setField<String>('completed_by', value);

  DateTime? get completedTime => getField<DateTime>('completed_time');
  set completedTime(DateTime? value) =>
      setField<DateTime>('completed_time', value);

  bool? get clientApproved => getField<bool>('client_approved');
  set clientApproved(bool? value) => setField<bool>('client_approved', value);

  String? get clientIssue => getField<String>('client_issue');
  set clientIssue(String? value) => setField<String>('client_issue', value);

  int? get numberOfSkus => getField<int>('number_of_skus');
  set numberOfSkus(int? value) => setField<int>('number_of_skus', value);

  int? get installTypeCount => getField<int>('install_type_count');
  set installTypeCount(int? value) =>
      setField<int>('install_type_count', value);

  String? get issue => getField<String>('issue');
  set issue(String? value) => setField<String>('issue', value);

  int? get numberOfSkus2 => getField<int>('number_of_skus2');
  set numberOfSkus2(int? value) => setField<int>('number_of_skus2', value);

  String? get installType => getField<String>('install_type');
  set installType(String? value) => setField<String>('install_type', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);

  String? get floorPhoto => getField<String>('floor_photo');
  set floorPhoto(String? value) => setField<String>('floor_photo', value);

  String? get cloudinaryImage => getField<String>('cloudinary_image');
  set cloudinaryImage(String? value) =>
      setField<String>('cloudinary_image', value);

  String? get rowId => getField<String>('row_id');
  set rowId(String? value) => setField<String>('row_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get syncedFrom => getField<String>('synced_from');
  set syncedFrom(String? value) => setField<String>('synced_from', value);
}
