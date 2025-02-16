// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompletionTokensDetailsStruct extends FFFirebaseStruct {
  CompletionTokensDetailsStruct({
    int? reasoningTokens,
    int? audioTokens,
    int? acceptedPredictionTokens,
    int? rejectedPredictionTokens,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _reasoningTokens = reasoningTokens,
        _audioTokens = audioTokens,
        _acceptedPredictionTokens = acceptedPredictionTokens,
        _rejectedPredictionTokens = rejectedPredictionTokens,
        super(firestoreUtilData);

  // "reasoning_tokens" field.
  int? _reasoningTokens;
  int get reasoningTokens => _reasoningTokens ?? 0;
  set reasoningTokens(int? val) => _reasoningTokens = val;

  void incrementReasoningTokens(int amount) =>
      reasoningTokens = reasoningTokens + amount;

  bool hasReasoningTokens() => _reasoningTokens != null;

  // "audio_tokens" field.
  int? _audioTokens;
  int get audioTokens => _audioTokens ?? 0;
  set audioTokens(int? val) => _audioTokens = val;

  void incrementAudioTokens(int amount) => audioTokens = audioTokens + amount;

  bool hasAudioTokens() => _audioTokens != null;

  // "accepted_prediction_tokens" field.
  int? _acceptedPredictionTokens;
  int get acceptedPredictionTokens => _acceptedPredictionTokens ?? 0;
  set acceptedPredictionTokens(int? val) => _acceptedPredictionTokens = val;

  void incrementAcceptedPredictionTokens(int amount) =>
      acceptedPredictionTokens = acceptedPredictionTokens + amount;

  bool hasAcceptedPredictionTokens() => _acceptedPredictionTokens != null;

  // "rejected_prediction_tokens" field.
  int? _rejectedPredictionTokens;
  int get rejectedPredictionTokens => _rejectedPredictionTokens ?? 0;
  set rejectedPredictionTokens(int? val) => _rejectedPredictionTokens = val;

  void incrementRejectedPredictionTokens(int amount) =>
      rejectedPredictionTokens = rejectedPredictionTokens + amount;

  bool hasRejectedPredictionTokens() => _rejectedPredictionTokens != null;

  static CompletionTokensDetailsStruct fromMap(Map<String, dynamic> data) =>
      CompletionTokensDetailsStruct(
        reasoningTokens: castToType<int>(data['reasoning_tokens']),
        audioTokens: castToType<int>(data['audio_tokens']),
        acceptedPredictionTokens:
            castToType<int>(data['accepted_prediction_tokens']),
        rejectedPredictionTokens:
            castToType<int>(data['rejected_prediction_tokens']),
      );

  static CompletionTokensDetailsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CompletionTokensDetailsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'reasoning_tokens': _reasoningTokens,
        'audio_tokens': _audioTokens,
        'accepted_prediction_tokens': _acceptedPredictionTokens,
        'rejected_prediction_tokens': _rejectedPredictionTokens,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reasoning_tokens': serializeParam(
          _reasoningTokens,
          ParamType.int,
        ),
        'audio_tokens': serializeParam(
          _audioTokens,
          ParamType.int,
        ),
        'accepted_prediction_tokens': serializeParam(
          _acceptedPredictionTokens,
          ParamType.int,
        ),
        'rejected_prediction_tokens': serializeParam(
          _rejectedPredictionTokens,
          ParamType.int,
        ),
      }.withoutNulls;

  static CompletionTokensDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CompletionTokensDetailsStruct(
        reasoningTokens: deserializeParam(
          data['reasoning_tokens'],
          ParamType.int,
          false,
        ),
        audioTokens: deserializeParam(
          data['audio_tokens'],
          ParamType.int,
          false,
        ),
        acceptedPredictionTokens: deserializeParam(
          data['accepted_prediction_tokens'],
          ParamType.int,
          false,
        ),
        rejectedPredictionTokens: deserializeParam(
          data['rejected_prediction_tokens'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CompletionTokensDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompletionTokensDetailsStruct &&
        reasoningTokens == other.reasoningTokens &&
        audioTokens == other.audioTokens &&
        acceptedPredictionTokens == other.acceptedPredictionTokens &&
        rejectedPredictionTokens == other.rejectedPredictionTokens;
  }

  @override
  int get hashCode => const ListEquality().hash([
        reasoningTokens,
        audioTokens,
        acceptedPredictionTokens,
        rejectedPredictionTokens
      ]);
}

CompletionTokensDetailsStruct createCompletionTokensDetailsStruct({
  int? reasoningTokens,
  int? audioTokens,
  int? acceptedPredictionTokens,
  int? rejectedPredictionTokens,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompletionTokensDetailsStruct(
      reasoningTokens: reasoningTokens,
      audioTokens: audioTokens,
      acceptedPredictionTokens: acceptedPredictionTokens,
      rejectedPredictionTokens: rejectedPredictionTokens,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompletionTokensDetailsStruct? updateCompletionTokensDetailsStruct(
  CompletionTokensDetailsStruct? completionTokensDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    completionTokensDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompletionTokensDetailsStructData(
  Map<String, dynamic> firestoreData,
  CompletionTokensDetailsStruct? completionTokensDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (completionTokensDetails == null) {
    return;
  }
  if (completionTokensDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      completionTokensDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final completionTokensDetailsData = getCompletionTokensDetailsFirestoreData(
      completionTokensDetails, forFieldValue);
  final nestedData =
      completionTokensDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      completionTokensDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompletionTokensDetailsFirestoreData(
  CompletionTokensDetailsStruct? completionTokensDetails, [
  bool forFieldValue = false,
]) {
  if (completionTokensDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(completionTokensDetails.toMap());

  // Add any Firestore field values
  completionTokensDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompletionTokensDetailsListFirestoreData(
  List<CompletionTokensDetailsStruct>? completionTokensDetailss,
) =>
    completionTokensDetailss
        ?.map((e) => getCompletionTokensDetailsFirestoreData(e, true))
        .toList() ??
    [];
