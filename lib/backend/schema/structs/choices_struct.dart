// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChoicesStruct extends FFFirebaseStruct {
  ChoicesStruct({
    int? index,
    MessageStruct? message,
    String? logprobs,
    String? finishReason,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _index = index,
        _message = message,
        _logprobs = logprobs,
        _finishReason = finishReason,
        super(firestoreUtilData);

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "message" field.
  MessageStruct? _message;
  MessageStruct get message => _message ?? MessageStruct();
  set message(MessageStruct? val) => _message = val;

  void updateMessage(Function(MessageStruct) updateFn) {
    updateFn(_message ??= MessageStruct());
  }

  bool hasMessage() => _message != null;

  // "logprobs" field.
  String? _logprobs;
  String get logprobs => _logprobs ?? '';
  set logprobs(String? val) => _logprobs = val;

  bool hasLogprobs() => _logprobs != null;

  // "finish_reason" field.
  String? _finishReason;
  String get finishReason => _finishReason ?? '';
  set finishReason(String? val) => _finishReason = val;

  bool hasFinishReason() => _finishReason != null;

  static ChoicesStruct fromMap(Map<String, dynamic> data) => ChoicesStruct(
        index: castToType<int>(data['index']),
        message: data['message'] is MessageStruct
            ? data['message']
            : MessageStruct.maybeFromMap(data['message']),
        logprobs: data['logprobs'] as String?,
        finishReason: data['finish_reason'] as String?,
      );

  static ChoicesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChoicesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'index': _index,
        'message': _message?.toMap(),
        'logprobs': _logprobs,
        'finish_reason': _finishReason,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.DataStruct,
        ),
        'logprobs': serializeParam(
          _logprobs,
          ParamType.String,
        ),
        'finish_reason': serializeParam(
          _finishReason,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChoicesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChoicesStruct(
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        message: deserializeStructParam(
          data['message'],
          ParamType.DataStruct,
          false,
          structBuilder: MessageStruct.fromSerializableMap,
        ),
        logprobs: deserializeParam(
          data['logprobs'],
          ParamType.String,
          false,
        ),
        finishReason: deserializeParam(
          data['finish_reason'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChoicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChoicesStruct &&
        index == other.index &&
        message == other.message &&
        logprobs == other.logprobs &&
        finishReason == other.finishReason;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([index, message, logprobs, finishReason]);
}

ChoicesStruct createChoicesStruct({
  int? index,
  MessageStruct? message,
  String? logprobs,
  String? finishReason,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChoicesStruct(
      index: index,
      message: message ?? (clearUnsetFields ? MessageStruct() : null),
      logprobs: logprobs,
      finishReason: finishReason,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChoicesStruct? updateChoicesStruct(
  ChoicesStruct? choices, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    choices
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChoicesStructData(
  Map<String, dynamic> firestoreData,
  ChoicesStruct? choices,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (choices == null) {
    return;
  }
  if (choices.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && choices.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final choicesData = getChoicesFirestoreData(choices, forFieldValue);
  final nestedData = choicesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = choices.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChoicesFirestoreData(
  ChoicesStruct? choices, [
  bool forFieldValue = false,
]) {
  if (choices == null) {
    return {};
  }
  final firestoreData = mapToFirestore(choices.toMap());

  // Handle nested data for "message" field.
  addMessageStructData(
    firestoreData,
    choices.hasMessage() ? choices.message : null,
    'message',
    forFieldValue,
  );

  // Add any Firestore field values
  choices.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChoicesListFirestoreData(
  List<ChoicesStruct>? choicess,
) =>
    choicess?.map((e) => getChoicesFirestoreData(e, true)).toList() ?? [];
