import '../database.dart';

class PaceLogTable extends SupabaseTable<PaceLogRow> {
  @override
  String get tableName => 'pace_log';

  @override
  PaceLogRow createRow(Map<String, dynamic> data) => PaceLogRow(data);
}

class PaceLogRow extends SupabaseDataRow {
  PaceLogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaceLogTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get paceId => getField<String>('pace_id')!;
  set paceId(String value) => setField<String>('pace_id', value);

  String? get deal => getField<String>('deal');
  set deal(String? value) => setField<String>('deal', value);

  String? get paceStatus => getField<String>('pace_status');
  set paceStatus(String? value) => setField<String>('pace_status', value);

  bool? get buildingProtectionInPlace =>
      getField<bool>('building_protection_in_place');
  set buildingProtectionInPlace(bool? value) =>
      setField<bool>('building_protection_in_place', value);

  bool? get preExistingDamageWalkComplete =>
      getField<bool>('pre_existing_damage_walk_complete');
  set preExistingDamageWalkComplete(bool? value) =>
      setField<bool>('pre_existing_damage_walk_complete', value);

  bool? get fullCrewAtPreInstallMeeting =>
      getField<bool>('full_crew_at_pre_install_meeting');
  set fullCrewAtPreInstallMeeting(bool? value) =>
      setField<bool>('full_crew_at_pre_install_meeting', value);

  bool? get trucksHaveArrived => getField<bool>('trucks_have_arrived');
  set trucksHaveArrived(bool? value) =>
      setField<bool>('trucks_have_arrived', value);

  bool? get pullIsCorrect => getField<bool>('pull_is_correct');
  set pullIsCorrect(bool? value) => setField<bool>('pull_is_correct', value);

  bool? get allUnitsSignedOff => getField<bool>('all_units_signed_off');
  set allUnitsSignedOff(bool? value) =>
      setField<bool>('all_units_signed_off', value);

  bool? get allTrashRemoved => getField<bool>('all_trash_removed');
  set allTrashRemoved(bool? value) =>
      setField<bool>('all_trash_removed', value);

  bool? get dailyClientWalkComplete =>
      getField<bool>('daily_client_walk_complete');
  set dailyClientWalkComplete(bool? value) =>
      setField<bool>('daily_client_walk_complete', value);

  String? get reportedBy => getField<String>('reported_by');
  set reportedBy(String? value) => setField<String>('reported_by', value);

  DateTime? get reportedTime => getField<DateTime>('reported_time');
  set reportedTime(DateTime? value) =>
      setField<DateTime>('reported_time', value);

  bool? get notify => getField<bool>('notify');
  set notify(bool? value) => setField<bool>('notify', value);

  String? get closedBy => getField<String>('closed_by');
  set closedBy(String? value) => setField<String>('closed_by', value);

  DateTime? get closedTime => getField<DateTime>('closed_time');
  set closedTime(DateTime? value) => setField<DateTime>('closed_time', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  String? get middayPace => getField<String>('midday_pace');
  set middayPace(String? value) => setField<String>('midday_pace', value);

  String? get midWeekPace => getField<String>('mid_week_pace');
  set midWeekPace(String? value) => setField<String>('mid_week_pace', value);

  DateTime? get raffleCutoffDate => getField<DateTime>('raffle_cutoff_date');
  set raffleCutoffDate(DateTime? value) =>
      setField<DateTime>('raffle_cutoff_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
