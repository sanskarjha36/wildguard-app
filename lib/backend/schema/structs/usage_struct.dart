// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsageStruct extends FFFirebaseStruct {
  UsageStruct({
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
    PromptTokensDetailsStruct? promptTokensDetails,
    CompletionTokensDetailsStruct? completionTokensDetails,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _promptTokens = promptTokens,
        _completionTokens = completionTokens,
        _totalTokens = totalTokens,
        _promptTokensDetails = promptTokensDetails,
        _completionTokensDetails = completionTokensDetails,
        super(firestoreUtilData);

  // "prompt_tokens" field.
  int? _promptTokens;
  int get promptTokens => _promptTokens ?? 0;
  set promptTokens(int? val) => _promptTokens = val;

  void incrementPromptTokens(int amount) =>
      promptTokens = promptTokens + amount;

  bool hasPromptTokens() => _promptTokens != null;

  // "completion_tokens" field.
  int? _completionTokens;
  int get completionTokens => _completionTokens ?? 0;
  set completionTokens(int? val) => _completionTokens = val;

  void incrementCompletionTokens(int amount) =>
      completionTokens = completionTokens + amount;

  bool hasCompletionTokens() => _completionTokens != null;

  // "total_tokens" field.
  int? _totalTokens;
  int get totalTokens => _totalTokens ?? 0;
  set totalTokens(int? val) => _totalTokens = val;

  void incrementTotalTokens(int amount) => totalTokens = totalTokens + amount;

  bool hasTotalTokens() => _totalTokens != null;

  // "prompt_tokens_details" field.
  PromptTokensDetailsStruct? _promptTokensDetails;
  PromptTokensDetailsStruct get promptTokensDetails =>
      _promptTokensDetails ?? PromptTokensDetailsStruct();
  set promptTokensDetails(PromptTokensDetailsStruct? val) =>
      _promptTokensDetails = val;

  void updatePromptTokensDetails(Function(PromptTokensDetailsStruct) updateFn) {
    updateFn(_promptTokensDetails ??= PromptTokensDetailsStruct());
  }

  bool hasPromptTokensDetails() => _promptTokensDetails != null;

  // "completion_tokens_details" field.
  CompletionTokensDetailsStruct? _completionTokensDetails;
  CompletionTokensDetailsStruct get completionTokensDetails =>
      _completionTokensDetails ?? CompletionTokensDetailsStruct();
  set completionTokensDetails(CompletionTokensDetailsStruct? val) =>
      _completionTokensDetails = val;

  void updateCompletionTokensDetails(
      Function(CompletionTokensDetailsStruct) updateFn) {
    updateFn(_completionTokensDetails ??= CompletionTokensDetailsStruct());
  }

  bool hasCompletionTokensDetails() => _completionTokensDetails != null;

  static UsageStruct fromMap(Map<String, dynamic> data) => UsageStruct(
        promptTokens: castToType<int>(data['prompt_tokens']),
        completionTokens: castToType<int>(data['completion_tokens']),
        totalTokens: castToType<int>(data['total_tokens']),
        promptTokensDetails:
            data['prompt_tokens_details'] is PromptTokensDetailsStruct
                ? data['prompt_tokens_details']
                : PromptTokensDetailsStruct.maybeFromMap(
                    data['prompt_tokens_details']),
        completionTokensDetails:
            data['completion_tokens_details'] is CompletionTokensDetailsStruct
                ? data['completion_tokens_details']
                : CompletionTokensDetailsStruct.maybeFromMap(
                    data['completion_tokens_details']),
      );

  static UsageStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'prompt_tokens': _promptTokens,
        'completion_tokens': _completionTokens,
        'total_tokens': _totalTokens,
        'prompt_tokens_details': _promptTokensDetails?.toMap(),
        'completion_tokens_details': _completionTokensDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prompt_tokens': serializeParam(
          _promptTokens,
          ParamType.int,
        ),
        'completion_tokens': serializeParam(
          _completionTokens,
          ParamType.int,
        ),
        'total_tokens': serializeParam(
          _totalTokens,
          ParamType.int,
        ),
        'prompt_tokens_details': serializeParam(
          _promptTokensDetails,
          ParamType.DataStruct,
        ),
        'completion_tokens_details': serializeParam(
          _completionTokensDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UsageStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsageStruct(
        promptTokens: deserializeParam(
          data['prompt_tokens'],
          ParamType.int,
          false,
        ),
        completionTokens: deserializeParam(
          data['completion_tokens'],
          ParamType.int,
          false,
        ),
        totalTokens: deserializeParam(
          data['total_tokens'],
          ParamType.int,
          false,
        ),
        promptTokensDetails: deserializeStructParam(
          data['prompt_tokens_details'],
          ParamType.DataStruct,
          false,
          structBuilder: PromptTokensDetailsStruct.fromSerializableMap,
        ),
        completionTokensDetails: deserializeStructParam(
          data['completion_tokens_details'],
          ParamType.DataStruct,
          false,
          structBuilder: CompletionTokensDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UsageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsageStruct &&
        promptTokens == other.promptTokens &&
        completionTokens == other.completionTokens &&
        totalTokens == other.totalTokens &&
        promptTokensDetails == other.promptTokensDetails &&
        completionTokensDetails == other.completionTokensDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([
        promptTokens,
        completionTokens,
        totalTokens,
        promptTokensDetails,
        completionTokensDetails
      ]);
}

UsageStruct createUsageStruct({
  int? promptTokens,
  int? completionTokens,
  int? totalTokens,
  PromptTokensDetailsStruct? promptTokensDetails,
  CompletionTokensDetailsStruct? completionTokensDetails,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsageStruct(
      promptTokens: promptTokens,
      completionTokens: completionTokens,
      totalTokens: totalTokens,
      promptTokensDetails: promptTokensDetails ??
          (clearUnsetFields ? PromptTokensDetailsStruct() : null),
      completionTokensDetails: completionTokensDetails ??
          (clearUnsetFields ? CompletionTokensDetailsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsageStruct? updateUsageStruct(
  UsageStruct? usage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    usage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsageStructData(
  Map<String, dynamic> firestoreData,
  UsageStruct? usage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (usage == null) {
    return;
  }
  if (usage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && usage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usageData = getUsageFirestoreData(usage, forFieldValue);
  final nestedData = usageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = usage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsageFirestoreData(
  UsageStruct? usage, [
  bool forFieldValue = false,
]) {
  if (usage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(usage.toMap());

  // Handle nested data for "prompt_tokens_details" field.
  addPromptTokensDetailsStructData(
    firestoreData,
    usage.hasPromptTokensDetails() ? usage.promptTokensDetails : null,
    'prompt_tokens_details',
    forFieldValue,
  );

  // Handle nested data for "completion_tokens_details" field.
  addCompletionTokensDetailsStructData(
    firestoreData,
    usage.hasCompletionTokensDetails() ? usage.completionTokensDetails : null,
    'completion_tokens_details',
    forFieldValue,
  );

  // Add any Firestore field values
  usage.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsageListFirestoreData(
  List<UsageStruct>? usages,
) =>
    usages?.map((e) => getUsageFirestoreData(e, true)).toList() ?? [];
