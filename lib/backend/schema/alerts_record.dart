import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlertsRecord extends FirestoreRecord {
  AlertsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "members_joined" field.
  int? _membersJoined;
  int get membersJoined => _membersJoined ?? 0;
  bool hasMembersJoined() => _membersJoined != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  bool hasTag() => _tag != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "hyperlink" field.
  String? _hyperlink;
  String get hyperlink => _hyperlink ?? '';
  bool hasHyperlink() => _hyperlink != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _membersJoined = castToType<int>(snapshotData['members_joined']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _contact = snapshotData['contact'] as String?;
    _tag = snapshotData['tag'] as String?;
    _pic = snapshotData['pic'] as String?;
    _hyperlink = snapshotData['hyperlink'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alerts');

  static Stream<AlertsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlertsRecord.fromSnapshot(s));

  static Future<AlertsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlertsRecord.fromSnapshot(s));

  static AlertsRecord fromSnapshot(DocumentSnapshot snapshot) => AlertsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlertsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlertsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlertsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlertsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlertsRecordData({
  DocumentReference? userRef,
  String? message,
  int? membersJoined,
  DateTime? timestamp,
  LatLng? location,
  String? contact,
  String? tag,
  String? pic,
  String? hyperlink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'message': message,
      'members_joined': membersJoined,
      'timestamp': timestamp,
      'location': location,
      'contact': contact,
      'tag': tag,
      'pic': pic,
      'hyperlink': hyperlink,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlertsRecordDocumentEquality implements Equality<AlertsRecord> {
  const AlertsRecordDocumentEquality();

  @override
  bool equals(AlertsRecord? e1, AlertsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.message == e2?.message &&
        e1?.membersJoined == e2?.membersJoined &&
        e1?.timestamp == e2?.timestamp &&
        e1?.location == e2?.location &&
        e1?.contact == e2?.contact &&
        e1?.tag == e2?.tag &&
        e1?.pic == e2?.pic &&
        e1?.hyperlink == e2?.hyperlink;
  }

  @override
  int hash(AlertsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.message,
        e?.membersJoined,
        e?.timestamp,
        e?.location,
        e?.contact,
        e?.tag,
        e?.pic,
        e?.hyperlink
      ]);

  @override
  bool isValidKey(Object? o) => o is AlertsRecord;
}
