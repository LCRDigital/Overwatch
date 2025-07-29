import '../database.dart';

class UnitTypeRequirementsTable extends SupabaseTable<UnitTypeRequirementsRow> {
  @override
  String get tableName => 'unit_type_requirements';

  @override
  UnitTypeRequirementsRow createRow(Map<String, dynamic> data) =>
      UnitTypeRequirementsRow(data);
}

class UnitTypeRequirementsRow extends SupabaseDataRow {
  UnitTypeRequirementsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitTypeRequirementsTable();

  String get skuId => getField<String>('sku_id')!;
  set skuId(String value) => setField<String>('sku_id', value);

  String? get rowId => getField<String>('row_id');
  set rowId(String? value) => setField<String>('row_id', value);

  String? get unitTypeId => getField<String>('unit_type_id');
  set unitTypeId(String? value) => setField<String>('unit_type_id', value);

  String? get itemName => getField<String>('item_name');
  set itemName(String? value) => setField<String>('item_name', value);

  String? get itemSku => getField<String>('item_sku');
  set itemSku(String? value) => setField<String>('item_sku', value);

  double? get requirement => getField<double>('requirement');
  set requirement(double? value) => setField<double>('requirement', value);

  String? get project => getField<String>('project');
  set project(String? value) => setField<String>('project', value);

  String? get unitTypeName => getField<String>('unit_type_name');
  set unitTypeName(String? value) => setField<String>('unit_type_name', value);

  String? get deal => getField<String>('deal');
  set deal(String? value) => setField<String>('deal', value);

  double? get phase => getField<double>('phase');
  set phase(double? value) => setField<double>('phase', value);

  String? get aiImage => getField<String>('ai_image');
  set aiImage(String? value) => setField<String>('ai_image', value);

  String? get skuImage => getField<String>('sku_image');
  set skuImage(String? value) => setField<String>('sku_image', value);

  String? get floorplan => getField<String>('floorplan');
  set floorplan(String? value) => setField<String>('floorplan', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get syncedFrom => getField<String>('synced_from');
  set syncedFrom(String? value) => setField<String>('synced_from', value);
}
