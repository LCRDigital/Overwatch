import '../database.dart';

class RecentFieldActivityTable extends SupabaseTable<RecentFieldActivityRow> {
  @override
  String get tableName => 'recent_field_activity';

  @override
  RecentFieldActivityRow createRow(Map<String, dynamic> data) =>
      RecentFieldActivityRow(data);
}

class RecentFieldActivityRow extends SupabaseDataRow {
  RecentFieldActivityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecentFieldActivityTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  String? get operation => getField<String>('operation');
  set operation(String? value) => setField<String>('operation', value);

  String? get deal => getField<String>('deal');
  set deal(String? value) => setField<String>('deal', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  dynamic get dataField => getField<dynamic>('data');
  set dataField(dynamic value) => setField<dynamic>('data', value);

  bool? get syncedToAirtable => getField<bool>('synced_to_airtable');
  set syncedToAirtable(bool? value) =>
      setField<bool>('synced_to_airtable', value);

  int? get secondsAgo => getField<int>('seconds_ago');
  set secondsAgo(int? value) => setField<int>('seconds_ago', value);
}
