import '../database.dart';

class UnitIssuesTable extends SupabaseTable<UnitIssuesRow> {
  @override
  String get tableName => 'unit_issues';

  @override
  UnitIssuesRow createRow(Map<String, dynamic> data) => UnitIssuesRow(data);
}

class UnitIssuesRow extends SupabaseDataRow {
  UnitIssuesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitIssuesTable();

  String get issueId => getField<String>('issue_id')!;
  set issueId(String value) => setField<String>('issue_id', value);

  String? get rowId => getField<String>('row_id');
  set rowId(String? value) => setField<String>('row_id', value);

  String? get issue => getField<String>('issue');
  set issue(String? value) => setField<String>('issue', value);

  String? get issueCategory => getField<String>('issue_category');
  set issueCategory(String? value) => setField<String>('issue_category', value);

  String? get issueComments => getField<String>('issue_comments');
  set issueComments(String? value) => setField<String>('issue_comments', value);

  String? get issueStatus => getField<String>('issue_status');
  set issueStatus(String? value) => setField<String>('issue_status', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  String? get unitType => getField<String>('unit_type');
  set unitType(String? value) => setField<String>('unit_type', value);

  String? get deal => getField<String>('deal');
  set deal(String? value) => setField<String>('deal', value);

  String? get fullSku => getField<String>('full_sku');
  set fullSku(String? value) => setField<String>('full_sku', value);

  String? get reportedBy => getField<String>('reported_by');
  set reportedBy(String? value) => setField<String>('reported_by', value);

  DateTime? get reportedTime => getField<DateTime>('reported_time');
  set reportedTime(DateTime? value) =>
      setField<DateTime>('reported_time', value);

  String? get issuePhoto => getField<String>('issue_photo');
  set issuePhoto(String? value) => setField<String>('issue_photo', value);

  String? get closedBy => getField<String>('closed_by');
  set closedBy(String? value) => setField<String>('closed_by', value);

  DateTime? get closedTime => getField<DateTime>('closed_time');
  set closedTime(DateTime? value) => setField<DateTime>('closed_time', value);

  String? get closeComment => getField<String>('close_comment');
  set closeComment(String? value) => setField<String>('close_comment', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  String? get comment2 => getField<String>('comment2');
  set comment2(String? value) => setField<String>('comment2', value);

  String? get mxDeal => getField<String>('mx_deal');
  set mxDeal(String? value) => setField<String>('mx_deal', value);

  String? get issueType => getField<String>('issue_type');
  set issueType(String? value) => setField<String>('issue_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get syncedFrom => getField<String>('synced_from');
  set syncedFrom(String? value) => setField<String>('synced_from', value);
}
