import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCollectionsRecord extends FirestoreRecord {
  UserCollectionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  bool hasVerified() => _verified != null;

  // "new_response" field.
  String? _newResponse;
  String get newResponse => _newResponse ?? '';
  bool hasNewResponse() => _newResponse != null;

  // "new_response_bool" field.
  bool? _newResponseBool;
  bool get newResponseBool => _newResponseBool ?? false;
  bool hasNewResponseBool() => _newResponseBool != null;

  // "current_location" field.
  LatLng? _currentLocation;
  LatLng? get currentLocation => _currentLocation;
  bool hasCurrentLocation() => _currentLocation != null;

  // "current_location_str" field.
  String? _currentLocationStr;
  String get currentLocationStr => _currentLocationStr ?? '';
  bool hasCurrentLocationStr() => _currentLocationStr != null;

  // "ai_true" field.
  bool? _aiTrue;
  bool get aiTrue => _aiTrue ?? false;
  bool hasAiTrue() => _aiTrue != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _verified = snapshotData['verified'] as bool?;
    _newResponse = snapshotData['new_response'] as String?;
    _newResponseBool = snapshotData['new_response_bool'] as bool?;
    _currentLocation = snapshotData['current_location'] as LatLng?;
    _currentLocationStr = snapshotData['current_location_str'] as String?;
    _aiTrue = snapshotData['ai_true'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User_collections');

  static Stream<UserCollectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCollectionsRecord.fromSnapshot(s));

  static Future<UserCollectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCollectionsRecord.fromSnapshot(s));

  static UserCollectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCollectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCollectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCollectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCollectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCollectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCollectionsRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? verified,
  String? newResponse,
  bool? newResponseBool,
  LatLng? currentLocation,
  String? currentLocationStr,
  bool? aiTrue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'verified': verified,
      'new_response': newResponse,
      'new_response_bool': newResponseBool,
      'current_location': currentLocation,
      'current_location_str': currentLocationStr,
      'ai_true': aiTrue,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCollectionsRecordDocumentEquality
    implements Equality<UserCollectionsRecord> {
  const UserCollectionsRecordDocumentEquality();

  @override
  bool equals(UserCollectionsRecord? e1, UserCollectionsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.verified == e2?.verified &&
        e1?.newResponse == e2?.newResponse &&
        e1?.newResponseBool == e2?.newResponseBool &&
        e1?.currentLocation == e2?.currentLocation &&
        e1?.currentLocationStr == e2?.currentLocationStr &&
        e1?.aiTrue == e2?.aiTrue;
  }

  @override
  int hash(UserCollectionsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.verified,
        e?.newResponse,
        e?.newResponseBool,
        e?.currentLocation,
        e?.currentLocationStr,
        e?.aiTrue
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCollectionsRecord;
}
