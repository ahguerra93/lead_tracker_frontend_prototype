// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_extraction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LeadExtractionModel _$LeadExtractionModelFromJson(Map<String, dynamic> json) {
  return _LeadExtractionModel.fromJson(json);
}

/// @nodoc
mixin _$LeadExtractionModel {
  String get intent => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_needs')
  List<String> get customerNeeds => throw _privateConstructorUsedError;
  @JsonKey(name: 'budget_hint')
  String? get budgetHint => throw _privateConstructorUsedError;
  @JsonKey(name: 'lead_temperature')
  String get leadTemperature => throw _privateConstructorUsedError;

  /// Serializes this LeadExtractionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeadExtractionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeadExtractionModelCopyWith<LeadExtractionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadExtractionModelCopyWith<$Res> {
  factory $LeadExtractionModelCopyWith(
    LeadExtractionModel value,
    $Res Function(LeadExtractionModel) then,
  ) = _$LeadExtractionModelCopyWithImpl<$Res, LeadExtractionModel>;
  @useResult
  $Res call({
    String intent,
    String summary,
    String? location,
    List<String> products,
    @JsonKey(name: 'customer_needs') List<String> customerNeeds,
    @JsonKey(name: 'budget_hint') String? budgetHint,
    @JsonKey(name: 'lead_temperature') String leadTemperature,
  });
}

/// @nodoc
class _$LeadExtractionModelCopyWithImpl<$Res, $Val extends LeadExtractionModel>
    implements $LeadExtractionModelCopyWith<$Res> {
  _$LeadExtractionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadExtractionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intent = null,
    Object? summary = null,
    Object? location = freezed,
    Object? products = null,
    Object? customerNeeds = null,
    Object? budgetHint = freezed,
    Object? leadTemperature = null,
  }) {
    return _then(
      _value.copyWith(
            intent: null == intent
                ? _value.intent
                : intent // ignore: cast_nullable_to_non_nullable
                      as String,
            summary: null == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as String,
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
            leadTemperature: null == leadTemperature
                ? _value.leadTemperature
                : leadTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeadExtractionModelImplCopyWith<$Res>
    implements $LeadExtractionModelCopyWith<$Res> {
  factory _$$LeadExtractionModelImplCopyWith(
    _$LeadExtractionModelImpl value,
    $Res Function(_$LeadExtractionModelImpl) then,
  ) = __$$LeadExtractionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String intent,
    String summary,
    String? location,
    List<String> products,
    @JsonKey(name: 'customer_needs') List<String> customerNeeds,
    @JsonKey(name: 'budget_hint') String? budgetHint,
    @JsonKey(name: 'lead_temperature') String leadTemperature,
  });
}

/// @nodoc
class __$$LeadExtractionModelImplCopyWithImpl<$Res>
    extends _$LeadExtractionModelCopyWithImpl<$Res, _$LeadExtractionModelImpl>
    implements _$$LeadExtractionModelImplCopyWith<$Res> {
  __$$LeadExtractionModelImplCopyWithImpl(
    _$LeadExtractionModelImpl _value,
    $Res Function(_$LeadExtractionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeadExtractionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intent = null,
    Object? summary = null,
    Object? location = freezed,
    Object? products = null,
    Object? customerNeeds = null,
    Object? budgetHint = freezed,
    Object? leadTemperature = null,
  }) {
    return _then(
      _$LeadExtractionModelImpl(
        intent: null == intent
            ? _value.intent
            : intent // ignore: cast_nullable_to_non_nullable
                  as String,
        summary: null == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as String,
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
        leadTemperature: null == leadTemperature
            ? _value.leadTemperature
            : leadTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadExtractionModelImpl implements _LeadExtractionModel {
  const _$LeadExtractionModelImpl({
    required this.intent,
    required this.summary,
    this.location,
    required final List<String> products,
    @JsonKey(name: 'customer_needs') required final List<String> customerNeeds,
    @JsonKey(name: 'budget_hint') this.budgetHint,
    @JsonKey(name: 'lead_temperature') required this.leadTemperature,
  }) : _products = products,
       _customerNeeds = customerNeeds;

  factory _$LeadExtractionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadExtractionModelImplFromJson(json);

  @override
  final String intent;
  @override
  final String summary;
  @override
  final String? location;
  final List<String> _products;
  @override
  List<String> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<String> _customerNeeds;
  @override
  @JsonKey(name: 'customer_needs')
  List<String> get customerNeeds {
    if (_customerNeeds is EqualUnmodifiableListView) return _customerNeeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerNeeds);
  }

  @override
  @JsonKey(name: 'budget_hint')
  final String? budgetHint;
  @override
  @JsonKey(name: 'lead_temperature')
  final String leadTemperature;

  @override
  String toString() {
    return 'LeadExtractionModel(intent: $intent, summary: $summary, location: $location, products: $products, customerNeeds: $customerNeeds, budgetHint: $budgetHint, leadTemperature: $leadTemperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadExtractionModelImpl &&
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
                other.leadTemperature == leadTemperature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    intent,
    summary,
    location,
    const DeepCollectionEquality().hash(_products),
    const DeepCollectionEquality().hash(_customerNeeds),
    budgetHint,
    leadTemperature,
  );

  /// Create a copy of LeadExtractionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadExtractionModelImplCopyWith<_$LeadExtractionModelImpl> get copyWith =>
      __$$LeadExtractionModelImplCopyWithImpl<_$LeadExtractionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadExtractionModelImplToJson(this);
  }
}

abstract class _LeadExtractionModel implements LeadExtractionModel {
  const factory _LeadExtractionModel({
    required final String intent,
    required final String summary,
    final String? location,
    required final List<String> products,
    @JsonKey(name: 'customer_needs') required final List<String> customerNeeds,
    @JsonKey(name: 'budget_hint') final String? budgetHint,
    @JsonKey(name: 'lead_temperature') required final String leadTemperature,
  }) = _$LeadExtractionModelImpl;

  factory _LeadExtractionModel.fromJson(Map<String, dynamic> json) =
      _$LeadExtractionModelImpl.fromJson;

  @override
  String get intent;
  @override
  String get summary;
  @override
  String? get location;
  @override
  List<String> get products;
  @override
  @JsonKey(name: 'customer_needs')
  List<String> get customerNeeds;
  @override
  @JsonKey(name: 'budget_hint')
  String? get budgetHint;
  @override
  @JsonKey(name: 'lead_temperature')
  String get leadTemperature;

  /// Create a copy of LeadExtractionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeadExtractionModelImplCopyWith<_$LeadExtractionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
