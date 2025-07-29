import '../database.dart';

class CurrentPaceStatusTable extends SupabaseTable<CurrentPaceStatusRow> {
  @override
  String get tableName => 'current_pace_status';

  @override
  CurrentPaceStatusRow createRow(Map<String, dynamic> data) =>
      CurrentPaceStatusRow(data);
}

class CurrentPaceStatusRow extends SupabaseDataRow {
  CurrentPaceStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CurrentPaceStatusTable();

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

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);
}
