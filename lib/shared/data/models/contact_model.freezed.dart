// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContactModel _$ContactModelFromJson(Map<String, dynamic> json) {
  return _ContactModel.fromJson(json);
}

/// @nodoc
mixin _$ContactModel {
  @JsonKey(name: 'wa_id')
  String get waId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ContactModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactModelCopyWith<ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
    ContactModel value,
    $Res Function(ContactModel) then,
  ) = _$ContactModelCopyWithImpl<$Res, ContactModel>;
  @useResult
  $Res call({@JsonKey(name: 'wa_id') String waId, String name});
}

/// @nodoc
class _$ContactModelCopyWithImpl<$Res, $Val extends ContactModel>
    implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? waId = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            waId: null == waId
                ? _value.waId
                : waId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContactModelImplCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$$ContactModelImplCopyWith(
    _$ContactModelImpl value,
    $Res Function(_$ContactModelImpl) then,
  ) = __$$ContactModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'wa_id') String waId, String name});
}

/// @nodoc
class __$$ContactModelImplCopyWithImpl<$Res>
    extends _$ContactModelCopyWithImpl<$Res, _$ContactModelImpl>
    implements _$$ContactModelImplCopyWith<$Res> {
  __$$ContactModelImplCopyWithImpl(
    _$ContactModelImpl _value,
    $Res Function(_$ContactModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? waId = null, Object? name = null}) {
    return _then(
      _$ContactModelImpl(
        waId: null == waId
            ? _value.waId
            : waId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactModelImpl implements _ContactModel {
  const _$ContactModelImpl({
    @JsonKey(name: 'wa_id') required this.waId,
    required this.name,
  });

  factory _$ContactModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactModelImplFromJson(json);

  @override
  @JsonKey(name: 'wa_id')
  final String waId;
  @override
  final String name;

  @override
  String toString() {
    return 'ContactModel(waId: $waId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactModelImpl &&
            (identical(other.waId, waId) || other.waId == waId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, waId, name);

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactModelImplCopyWith<_$ContactModelImpl> get copyWith =>
      __$$ContactModelImplCopyWithImpl<_$ContactModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactModelImplToJson(this);
  }
}

abstract class _ContactModel implements ContactModel {
  const factory _ContactModel({
    @JsonKey(name: 'wa_id') required final String waId,
    required final String name,
  }) = _$ContactModelImpl;

  factory _ContactModel.fromJson(Map<String, dynamic> json) =
      _$ContactModelImpl.fromJson;

  @override
  @JsonKey(name: 'wa_id')
  String get waId;
  @override
  String get name;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactModelImplCopyWith<_$ContactModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
