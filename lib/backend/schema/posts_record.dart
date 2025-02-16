import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "pfp" field.
  String? _pfp;
  String get pfp => _pfp ?? '';
  bool hasPfp() => _pfp != null;

  // "post_message" field.
  String? _postMessage;
  String get postMessage => _postMessage ?? '';
  bool hasPostMessage() => _postMessage != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "post_pic" field.
  String? _postPic;
  String get postPic => _postPic ?? '';
  bool hasPostPic() => _postPic != null;

  // "location_str" field.
  String? _locationStr;
  String get locationStr => _locationStr ?? '';
  bool hasLocationStr() => _locationStr != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _userName = snapshotData['user_name'] as String?;
    _pfp = snapshotData['pfp'] as String?;
    _postMessage = snapshotData['post_message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _postPic = snapshotData['post_pic'] as String?;
    _locationStr = snapshotData['location_str'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  DocumentReference? userRef,
  String? userName,
  String? pfp,
  String? postMessage,
  DateTime? timestamp,
  LatLng? location,
  String? postPic,
  String? locationStr,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'user_name': userName,
      'pfp': pfp,
      'post_message': postMessage,
      'timestamp': timestamp,
      'location': location,
      'post_pic': postPic,
      'location_str': locationStr,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.userName == e2?.userName &&
        e1?.pfp == e2?.pfp &&
        e1?.postMessage == e2?.postMessage &&
        e1?.timestamp == e2?.timestamp &&
        e1?.location == e2?.location &&
        e1?.postPic == e2?.postPic &&
        e1?.locationStr == e2?.locationStr;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.userName,
        e?.pfp,
        e?.postMessage,
        e?.timestamp,
        e?.location,
        e?.postPic,
        e?.locationStr
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
