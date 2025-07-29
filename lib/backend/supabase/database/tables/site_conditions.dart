import '../database.dart';

class SiteConditionsTable extends SupabaseTable<SiteConditionsRow> {
  @override
  String get tableName => 'site_conditions';

  @override
  SiteConditionsRow createRow(Map<String, dynamic> data) =>
      SiteConditionsRow(data);
}

class SiteConditionsRow extends SupabaseDataRow {
  SiteConditionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SiteConditionsTable();

  String get siteConditionId => getField<String>('site_condition_id')!;
  set siteConditionId(String value) =>
      setField<String>('site_condition_id', value);

  String? get addSiteCondition => getField<String>('add_site_condition');
  set addSiteCondition(String? value) =>
      setField<String>('add_site_condition', value);

  String? get siteCondition => getField<String>('site_condition');
  set siteCondition(String? value) => setField<String>('site_condition', value);

  String? get siteConditionIssues => getField<String>('site_condition_issues');
  set siteConditionIssues(String? value) =>
      setField<String>('site_condition_issues', value);

  String? get siteConditionStatus => getField<String>('site_condition_status');
  set siteConditionStatus(String? value) =>
      setField<String>('site_condition_status', value);

  String? get deal => getField<String>('deal');
  set deal(String? value) => setField<String>('deal', value);

  String? get reportedBy => getField<String>('reported_by');
  set reportedBy(String? value) => setField<String>('reported_by', value);

  DateTime? get reportedTime => getField<DateTime>('reported_time');
  set reportedTime(DateTime? value) =>
      setField<DateTime>('reported_time', value);

  String? get closedBy => getField<String>('closed_by');
  set closedBy(String? value) => setField<String>('closed_by', value);

  DateTime? get closedTime => getField<DateTime>('closed_time');
  set closedTime(DateTime? value) => setField<DateTime>('closed_time', value);

  String? get closeComment => getField<String>('close_comment');
  set closeComment(String? value) => setField<String>('close_comment', value);

  bool? get notify => getField<bool>('notify');
  set notify(bool? value) => setField<bool>('notify', value);

  String? get siteConditionComments =>
      getField<String>('site_condition_comments');
  set siteConditionComments(String? value) =>
      setField<String>('site_condition_comments', value);

  String? get siteConditionPhoto => getField<String>('site_condition_photo');
  set siteConditionPhoto(String? value) =>
      setField<String>('site_condition_photo', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get syncedFrom => getField<String>('synced_from');
  set syncedFrom(String? value) => setField<String>('synced_from', value);
}
