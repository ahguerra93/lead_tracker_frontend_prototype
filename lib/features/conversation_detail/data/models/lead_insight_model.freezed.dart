// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_insight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LeadInsightModel _$LeadInsightModelFromJson(Map<String, dynamic> json) {
  return _LeadInsightModel.fromJson(json);
}

/// @nodoc
mixin _$LeadInsightModel {
  int? get id => throw _privateConstructorUsedError;
  int get conversationId => throw _privateConstructorUsedError;
  String? get intent => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;
  List<String> get customerNeeds => throw _privateConstructorUsedError;
  String? get budgetHint => throw _privateConstructorUsedError;
  String? get leadTemperature => throw _privateConstructorUsedError;
  Map<String, dynamic>? get rawAiResponse => throw _privateConstructorUsedError;
  int? get lastAnalyzedMessageId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this LeadInsightModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeadInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeadInsightModelCopyWith<LeadInsightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadInsightModelCopyWith<$Res> {
  factory $LeadInsightModelCopyWith(
    LeadInsightModel value,
    $Res Function(LeadInsightModel) then,
  ) = _$LeadInsightModelCopyWithImpl<$Res, LeadInsightModel>;
  @useResult
  $Res call({
    int? id,
    int conversationId,
    String? intent,
    String? summary,
    String? location,
    List<String> products,
    List<String> customerNeeds,
    String? budgetHint,
    String? leadTemperature,
    Map<String, dynamic>? rawAiResponse,
    int? lastAnalyzedMessageId,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime analyzedAt,
  });
}

/// @nodoc
class _$LeadInsightModelCopyWithImpl<$Res, $Val extends LeadInsightModel>
    implements $LeadInsightModelCopyWith<$Res> {
  _$LeadInsightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = null,
    Object? intent = freezed,
    Object? summary = freezed,
    Object? location = freezed,
    Object? products = null,
    Object? customerNeeds = null,
    Object? budgetHint = freezed,
    Object? leadTemperature = freezed,
    Object? rawAiResponse = freezed,
    Object? lastAnalyzedMessageId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as int,
            intent: freezed == intent
                ? _value.intent
                : intent // ignore: cast_nullable_to_non_nullable
                      as String?,
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            customerNeeds: null == customerNeeds
                ? _value.customerNeeds
                : customerNeeds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            budgetHint: freezed == budgetHint
                ? _value.budgetHint
                : budgetHint // ignore: cast_nullable_to_non_nullable
                      as String?,
            leadTemperature: freezed == leadTemperature
                ? _value.leadTemperature
                : leadTemperature // ignore: cast_nullable_to_non_nullable
                      as String?,
            rawAiResponse: freezed == rawAiResponse
                ? _value.rawAiResponse
                : rawAiResponse // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            lastAnalyzedMessageId: freezed == lastAnalyzedMessageId
                ? _value.lastAnalyzedMessageId
                : lastAnalyzedMessageId // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            analyzedAt: null == analyzedAt
                ? _value.analyzedAt
                : analyzedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeadInsightModelImplCopyWith<$Res>
    implements $LeadInsightModelCopyWith<$Res> {
  factory _$$LeadInsightModelImplCopyWith(
    _$LeadInsightModelImpl value,
    $Res Function(_$LeadInsightModelImpl) then,
  ) = __$$LeadInsightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int conversationId,
    String? intent,
    String? summary,
    String? location,
    List<String> products,
    List<String> customerNeeds,
    String? budgetHint,
    String? leadTemperature,
    Map<String, dynamic>? rawAiResponse,
    int? lastAnalyzedMessageId,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime analyzedAt,
  });
}

/// @nodoc
class __$$LeadInsightModelImplCopyWithImpl<$Res>
    extends _$LeadInsightModelCopyWithImpl<$Res, _$LeadInsightModelImpl>
    implements _$$LeadInsightModelImplCopyWith<$Res> {
  __$$LeadInsightModelImplCopyWithImpl(
    _$LeadInsightModelImpl _value,
    $Res Function(_$LeadInsightModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeadInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = null,
    Object? intent = freezed,
    Object? summary = freezed,
    Object? location = freezed,
    Object? products = null,
    Object? customerNeeds = null,
    Object? budgetHint = freezed,
    Object? leadTemperature = freezed,
    Object? rawAiResponse = freezed,
    Object? lastAnalyzedMessageId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? analyzedAt = null,
  }) {
    return _then(
      _$LeadInsightModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        intent: freezed == intent
            ? _value.intent
            : intent // ignore: cast_nullable_to_non_nullable
                  as String?,
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        customerNeeds: null == customerNeeds
            ? _value._customerNeeds
            : customerNeeds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        budgetHint: freezed == budgetHint
            ? _value.budgetHint
            : budgetHint // ignore: cast_nullable_to_non_nullable
                  as String?,
        leadTemperature: freezed == leadTemperature
            ? _value.leadTemperature
            : leadTemperature // ignore: cast_nullable_to_non_nullable
                  as String?,
        rawAiResponse: freezed == rawAiResponse
            ? _value._rawAiResponse
            : rawAiResponse // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        lastAnalyzedMessageId: freezed == lastAnalyzedMessageId
            ? _value.lastAnalyzedMessageId
            : lastAnalyzedMessageId // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        analyzedAt: null == analyzedAt
            ? _value.analyzedAt
            : analyzedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadInsightModelImpl implements _LeadInsightModel {
  const _$LeadInsightModelImpl({
    this.id,
    required this.conversationId,
    this.intent,
    this.summary,
    this.location,
    final List<String> products = const [],
    final List<String> customerNeeds = const [],
    this.budgetHint,
    this.leadTemperature,
    final Map<String, dynamic>? rawAiResponse,
    this.lastAnalyzedMessageId,
    required this.createdAt,
    required this.updatedAt,
    required this.analyzedAt,
  }) : _products = products,
       _customerNeeds = customerNeeds,
       _rawAiResponse = rawAiResponse;

  factory _$LeadInsightModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadInsightModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int conversationId;
  @override
  final String? intent;
  @override
  final String? summary;
  @override
  final String? location;
  final List<String> _products;
  @override
  @JsonKey()
  List<String> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<String> _customerNeeds;
  @override
  @JsonKey()
  List<String> get customerNeeds {
    if (_customerNeeds is EqualUnmodifiableListView) return _customerNeeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerNeeds);
  }

  @override
  final String? budgetHint;
  @override
  final String? leadTemperature;
  final Map<String, dynamic>? _rawAiResponse;
  @override
  Map<String, dynamic>? get rawAiResponse {
    final value = _rawAiResponse;
    if (value == null) return null;
    if (_rawAiResponse is EqualUnmodifiableMapView) return _rawAiResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? lastAnalyzedMessageId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime analyzedAt;

  @override
  String toString() {
    return 'LeadInsightModel(id: $id, conversationId: $conversationId, intent: $intent, summary: $summary, location: $location, products: $products, customerNeeds: $customerNeeds, budgetHint: $budgetHint, leadTemperature: $leadTemperature, rawAiResponse: $rawAiResponse, lastAnalyzedMessageId: $lastAnalyzedMessageId, createdAt: $createdAt, updatedAt: $updatedAt, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadInsightModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.intent, intent) || other.intent == intent) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(
              other._customerNeeds,
              _customerNeeds,
            ) &&
            (identical(other.budgetHint, budgetHint) ||
                other.budgetHint == budgetHint) &&
            (identical(other.leadTemperature, leadTemperature) ||
                other.leadTemperature == leadTemperature) &&
            const DeepCollectionEquality().equals(
              other._rawAiResponse,
              _rawAiResponse,
            ) &&
            (identical(other.lastAnalyzedMessageId, lastAnalyzedMessageId) ||
                other.lastAnalyzedMessageId == lastAnalyzedMessageId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    conversationId,
    intent,
    summary,
    location,
    const DeepCollectionEquality().hash(_products),
    const DeepCollectionEquality().hash(_customerNeeds),
    budgetHint,
    leadTemperature,
    const DeepCollectionEquality().hash(_rawAiResponse),
    lastAnalyzedMessageId,
    createdAt,
    updatedAt,
    analyzedAt,
  );

  /// Create a copy of LeadInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadInsightModelImplCopyWith<_$LeadInsightModelImpl> get copyWith =>
      __$$LeadInsightModelImplCopyWithImpl<_$LeadInsightModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadInsightModelImplToJson(this);
  }
}

abstract class _LeadInsightModel implements LeadInsightModel {
  const factory _LeadInsightModel({
    final int? id,
    required final int conversationId,
    final String? intent,
    final String? summary,
    final String? location,
    final List<String> products,
    final List<String> customerNeeds,
    final String? budgetHint,
    final String? leadTemperature,
    final Map<String, dynamic>? rawAiResponse,
    final int? lastAnalyzedMessageId,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required final DateTime analyzedAt,
  }) = _$LeadInsightModelImpl;

  factory _LeadInsightModel.fromJson(Map<String, dynamic> json) =
      _$LeadInsightModelImpl.fromJson;

  @override
  int? get id;
  @override
  int get conversationId;
  @override
  String? get intent;
  @override
  String? get summary;
  @override
  String? get location;
  @override
  List<String> get products;
  @override
  List<String> get customerNeeds;
  @override
  String? get budgetHint;
  @override
  String? get leadTemperature;
  @override
  Map<String, dynamic>? get rawAiResponse;
  @override
  int? get lastAnalyzedMessageId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime get analyzedAt;

  /// Create a copy of LeadInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeadInsightModelImplCopyWith<_$LeadInsightModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
