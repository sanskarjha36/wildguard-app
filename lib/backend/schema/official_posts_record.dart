import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfficialPostsRecord extends FirestoreRecord {
  OfficialPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "loc_str" field.
  String? _locStr;
  String get locStr => _locStr ?? '';
  bool hasLocStr() => _locStr != null;

  // "pfp" field.
  String? _pfp;
  String get pfp => _pfp ?? '';
  bool hasPfp() => _pfp != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _image = snapshotData['image'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _locStr = snapshotData['loc_str'] as String?;
    _pfp = snapshotData['pfp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('official_posts');

  static Stream<OfficialPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfficialPostsRecord.fromSnapshot(s));

  static Future<OfficialPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfficialPostsRecord.fromSnapshot(s));

  static OfficialPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfficialPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfficialPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfficialPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfficialPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfficialPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfficialPostsRecordData({
  String? name,
  DocumentReference? userRef,
  String? message,
  String? image,
  DateTime? timestamp,
  LatLng? location,
  String? locStr,
  String? pfp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'user_ref': userRef,
      'message': message,
      'image': image,
      'timestamp': timestamp,
      'location': location,
      'loc_str': locStr,
      'pfp': pfp,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfficialPostsRecordDocumentEquality
    implements Equality<OfficialPostsRecord> {
  const OfficialPostsRecordDocumentEquality();

  @override
  bool equals(OfficialPostsRecord? e1, OfficialPostsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.userRef == e2?.userRef &&
        e1?.message == e2?.message &&
        e1?.image == e2?.image &&
        e1?.timestamp == e2?.timestamp &&
        e1?.location == e2?.location &&
        e1?.locStr == e2?.locStr &&
        e1?.pfp == e2?.pfp;
  }

  @override
  int hash(OfficialPostsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.userRef,
        e?.message,
        e?.image,
        e?.timestamp,
        e?.location,
        e?.locStr,
        e?.pfp
      ]);

  @override
  bool isValidKey(Object? o) => o is OfficialPostsRecord;
}
