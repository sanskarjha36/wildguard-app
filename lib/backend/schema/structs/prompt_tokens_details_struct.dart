// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromptTokensDetailsStruct extends FFFirebaseStruct {
  PromptTokensDetailsStruct({
    int? cachedTokens,
    int? audioTokens,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cachedTokens = cachedTokens,
        _audioTokens = audioTokens,
        super(firestoreUtilData);

  // "cached_tokens" field.
  int? _cachedTokens;
  int get cachedTokens => _cachedTokens ?? 0;
  set cachedTokens(int? val) => _cachedTokens = val;

  void incrementCachedTokens(int amount) =>
      cachedTokens = cachedTokens + amount;

  bool hasCachedTokens() => _cachedTokens != null;

  // "audio_tokens" field.
  int? _audioTokens;
  int get audioTokens => _audioTokens ?? 0;
  set audioTokens(int? val) => _audioTokens = val;

  void incrementAudioTokens(int amount) => audioTokens = audioTokens + amount;

  bool hasAudioTokens() => _audioTokens != null;

  static PromptTokensDetailsStruct fromMap(Map<String, dynamic> data) =>
      PromptTokensDetailsStruct(
        cachedTokens: castToType<int>(data['cached_tokens']),
        audioTokens: castToType<int>(data['audio_tokens']),
      );

  static PromptTokensDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? PromptTokensDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'cached_tokens': _cachedTokens,
        'audio_tokens': _audioTokens,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cached_tokens': serializeParam(
          _cachedTokens,
          ParamType.int,
        ),
        'audio_tokens': serializeParam(
          _audioTokens,
          ParamType.int,
        ),
      }.withoutNulls;

  static PromptTokensDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PromptTokensDetailsStruct(
        cachedTokens: deserializeParam(
          data['cached_tokens'],
          ParamType.int,
          false,
        ),
        audioTokens: deserializeParam(
          data['audio_tokens'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PromptTokensDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromptTokensDetailsStruct &&
        cachedTokens == other.cachedTokens &&
        audioTokens == other.audioTokens;
  }

  @override
  int get hashCode => const ListEquality().hash([cachedTokens, audioTokens]);
}

PromptTokensDetailsStruct createPromptTokensDetailsStruct({
  int? cachedTokens,
  int? audioTokens,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PromptTokensDetailsStruct(
      cachedTokens: cachedTokens,
      audioTokens: audioTokens,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PromptTokensDetailsStruct? updatePromptTokensDetailsStruct(
  PromptTokensDetailsStruct? promptTokensDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    promptTokensDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPromptTokensDetailsStructData(
  Map<String, dynamic> firestoreData,
  PromptTokensDetailsStruct? promptTokensDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (promptTokensDetails == null) {
    return;
  }
  if (promptTokensDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && promptTokensDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final promptTokensDetailsData =
      getPromptTokensDetailsFirestoreData(promptTokensDetails, forFieldValue);
  final nestedData =
      promptTokensDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      promptTokensDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPromptTokensDetailsFirestoreData(
  PromptTokensDetailsStruct? promptTokensDetails, [
  bool forFieldValue = false,
]) {
  if (promptTokensDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(promptTokensDetails.toMap());

  // Add any Firestore field values
  promptTokensDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPromptTokensDetailsListFirestoreData(
  List<PromptTokensDetailsStruct>? promptTokensDetailss,
) =>
    promptTokensDetailss
        ?.map((e) => getPromptTokensDetailsFirestoreData(e, true))
        .toList() ??
    [];
