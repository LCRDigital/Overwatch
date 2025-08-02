import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnitRecord extends FirestoreRecord {
  UnitRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "deal_type_unit" field.
  String? _dealTypeUnit;
  String get dealTypeUnit => _dealTypeUnit ?? '';
  bool hasDealTypeUnit() => _dealTypeUnit != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "unit_status" field.
  String? _unitStatus;
  String get unitStatus => _unitStatus ?? '';
  bool hasUnitStatus() => _unitStatus != null;

  // "unit_type" field.
  String? _unitType;
  String get unitType => _unitType ?? '';
  bool hasUnitType() => _unitType != null;

  // "comopleted_by" field.
  String? _comopletedBy;
  String get comopletedBy => _comopletedBy ?? '';
  bool hasComopletedBy() => _comopletedBy != null;

  // "started_by" field.
  String? _startedBy;
  String get startedBy => _startedBy ?? '';
  bool hasStartedBy() => _startedBy != null;

  // "started_time" field.
  DateTime? _startedTime;
  DateTime? get startedTime => _startedTime;
  bool hasStartedTime() => _startedTime != null;

  // "completed_time" field.
  DateTime? _completedTime;
  DateTime? get completedTime => _completedTime;
  bool hasCompletedTime() => _completedTime != null;

  void _initializeFields() {
    _dealTypeUnit = snapshotData['deal_type_unit'] as String?;
    _unit = snapshotData['unit'] as String?;
    _unitStatus = snapshotData['unit_status'] as String?;
    _unitType = snapshotData['unit_type'] as String?;
    _comopletedBy = snapshotData['comopleted_by'] as String?;
    _startedBy = snapshotData['started_by'] as String?;
    _startedTime = snapshotData['started_time'] as DateTime?;
    _completedTime = snapshotData['completed_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('unit');

  static Stream<UnitRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UnitRecord.fromSnapshot(s));

  static Future<UnitRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UnitRecord.fromSnapshot(s));

  static UnitRecord fromSnapshot(DocumentSnapshot snapshot) => UnitRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UnitRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UnitRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UnitRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UnitRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUnitRecordData({
  String? dealTypeUnit,
  String? unit,
  String? unitStatus,
  String? unitType,
  String? comopletedBy,
  String? startedBy,
  DateTime? startedTime,
  DateTime? completedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'deal_type_unit': dealTypeUnit,
      'unit': unit,
      'unit_status': unitStatus,
      'unit_type': unitType,
      'comopleted_by': comopletedBy,
      'started_by': startedBy,
      'started_time': startedTime,
      'completed_time': completedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class UnitRecordDocumentEquality implements Equality<UnitRecord> {
  const UnitRecordDocumentEquality();

  @override
  bool equals(UnitRecord? e1, UnitRecord? e2) {
    return e1?.dealTypeUnit == e2?.dealTypeUnit &&
        e1?.unit == e2?.unit &&
        e1?.unitStatus == e2?.unitStatus &&
        e1?.unitType == e2?.unitType &&
        e1?.comopletedBy == e2?.comopletedBy &&
        e1?.startedBy == e2?.startedBy &&
        e1?.startedTime == e2?.startedTime &&
        e1?.completedTime == e2?.completedTime;
  }

  @override
  int hash(UnitRecord? e) => const ListEquality().hash([
        e?.dealTypeUnit,
        e?.unit,
        e?.unitStatus,
        e?.unitType,
        e?.comopletedBy,
        e?.startedBy,
        e?.startedTime,
        e?.completedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is UnitRecord;
}
