import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnitsRecord extends FirestoreRecord {
  UnitsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  void _initializeFields() {}

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('units');

  static Stream<UnitsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UnitsRecord.fromSnapshot(s));

  static Future<UnitsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UnitsRecord.fromSnapshot(s));

  static UnitsRecord fromSnapshot(DocumentSnapshot snapshot) => UnitsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UnitsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UnitsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UnitsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UnitsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUnitsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class UnitsRecordDocumentEquality implements Equality<UnitsRecord> {
  const UnitsRecordDocumentEquality();

  @override
  bool equals(UnitsRecord? e1, UnitsRecord? e2) {
    return;
  }

  @override
  int hash(UnitsRecord? e) => const ListEquality().hash([]);

  @override
  bool isValidKey(Object? o) => o is UnitsRecord;
}
