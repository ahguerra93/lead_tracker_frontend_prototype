// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_extraction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LeadExtraction {
  String get intent => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;
  List<String> get customerNeeds => throw _privateConstructorUsedError;
  String? get budgetHint => throw _privateConstructorUsedError;
  String get leadTemperature => throw _privateConstructorUsedError;

  /// Create a copy of LeadExtraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeadExtractionCopyWith<LeadExtraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadExtractionCopyWith<$Res> {
  factory $LeadExtractionCopyWith(
    LeadExtraction value,
    $Res Function(LeadExtraction) then,
  ) = _$LeadExtractionCopyWithImpl<$Res, LeadExtraction>;
  @useResult
  $Res call({
    String intent,
    String summary,
    String? location,
    List<String> products,
    List<String> customerNeeds,
    String? budgetHint,
    String leadTemperature,
  });
}

/// @nodoc
class _$LeadExtractionCopyWithImpl<$Res, $Val extends LeadExtraction>
    implements $LeadExtractionCopyWith<$Res> {
  _$LeadExtractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadExtraction
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
abstract class _$$LeadExtractionImplCopyWith<$Res>
    implements $LeadExtractionCopyWith<$Res> {
  factory _$$LeadExtractionImplCopyWith(
    _$LeadExtractionImpl value,
    $Res Function(_$LeadExtractionImpl) then,
  ) = __$$LeadExtractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String intent,
    String summary,
    String? location,
    List<String> products,
    List<String> customerNeeds,
    String? budgetHint,
    String leadTemperature,
  });
}

/// @nodoc
class __$$LeadExtractionImplCopyWithImpl<$Res>
    extends _$LeadExtractionCopyWithImpl<$Res, _$LeadExtractionImpl>
    implements _$$LeadExtractionImplCopyWith<$Res> {
  __$$LeadExtractionImplCopyWithImpl(
    _$LeadExtractionImpl _value,
    $Res Function(_$LeadExtractionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeadExtraction
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
      _$LeadExtractionImpl(
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

class _$LeadExtractionImpl implements _LeadExtraction {
  const _$LeadExtractionImpl({
    required this.intent,
    required this.summary,
    this.location,
    required final List<String> products,
    required final List<String> customerNeeds,
    this.budgetHint,
    required this.leadTemperature,
  }) : _products = products,
       _customerNeeds = customerNeeds;

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
  List<String> get customerNeeds {
    if (_customerNeeds is EqualUnmodifiableListView) return _customerNeeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerNeeds);
  }

  @override
  final String? budgetHint;
  @override
  final String leadTemperature;

  @override
  String toString() {
    return 'LeadExtraction(intent: $intent, summary: $summary, location: $location, products: $products, customerNeeds: $customerNeeds, budgetHint: $budgetHint, leadTemperature: $leadTemperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadExtractionImpl &&
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

  /// Create a copy of LeadExtraction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadExtractionImplCopyWith<_$LeadExtractionImpl> get copyWith =>
      __$$LeadExtractionImplCopyWithImpl<_$LeadExtractionImpl>(
        this,
        _$identity,
      );
}

abstract class _LeadExtraction implements LeadExtraction {
  const factory _LeadExtraction({
    required final String intent,
    required final String summary,
    final String? location,
    required final List<String> products,
    required final List<String> customerNeeds,
    final String? budgetHint,
    required final String leadTemperature,
  }) = _$LeadExtractionImpl;

  @override
  String get intent;
  @override
  String get summary;
  @override
  String? get location;
  @override
  List<String> get products;
  @override
  List<String> get customerNeeds;
  @override
  String? get budgetHint;
  @override
  String get leadTemperature;

  /// Create a copy of LeadExtraction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeadExtractionImplCopyWith<_$LeadExtractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
