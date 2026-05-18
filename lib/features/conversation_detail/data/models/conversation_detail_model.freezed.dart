// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConversationDetailModel _$ConversationDetailModelFromJson(
  Map<String, dynamic> json,
) {
  return _ConversationDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationDetailModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_id')
  int get contactId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number_id')
  String get phoneNumberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConversationDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationDetailModelCopyWith<ConversationDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDetailModelCopyWith<$Res> {
  factory $ConversationDetailModelCopyWith(
    ConversationDetailModel value,
    $Res Function(ConversationDetailModel) then,
  ) = _$ConversationDetailModelCopyWithImpl<$Res, ConversationDetailModel>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'contact_id') int contactId,
    @JsonKey(name: 'phone_number_id') String phoneNumberId,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class _$ConversationDetailModelCopyWithImpl<
  $Res,
  $Val extends ConversationDetailModel
>
    implements $ConversationDetailModelCopyWith<$Res> {
  _$ConversationDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? contactId = null,
    Object? phoneNumberId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            contactId: null == contactId
                ? _value.contactId
                : contactId // ignore: cast_nullable_to_non_nullable
                      as int,
            phoneNumberId: null == phoneNumberId
                ? _value.phoneNumberId
                : phoneNumberId // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConversationDetailModelImplCopyWith<$Res>
    implements $ConversationDetailModelCopyWith<$Res> {
  factory _$$ConversationDetailModelImplCopyWith(
    _$ConversationDetailModelImpl value,
    $Res Function(_$ConversationDetailModelImpl) then,
  ) = __$$ConversationDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'contact_id') int contactId,
    @JsonKey(name: 'phone_number_id') String phoneNumberId,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  });
}

/// @nodoc
class __$$ConversationDetailModelImplCopyWithImpl<$Res>
    extends
        _$ConversationDetailModelCopyWithImpl<
          $Res,
          _$ConversationDetailModelImpl
        >
    implements _$$ConversationDetailModelImplCopyWith<$Res> {
  __$$ConversationDetailModelImplCopyWithImpl(
    _$ConversationDetailModelImpl _value,
    $Res Function(_$ConversationDetailModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConversationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? contactId = null,
    Object? phoneNumberId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ConversationDetailModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        contactId: null == contactId
            ? _value.contactId
            : contactId // ignore: cast_nullable_to_non_nullable
                  as int,
        phoneNumberId: null == phoneNumberId
            ? _value.phoneNumberId
            : phoneNumberId // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationDetailModelImpl implements _ConversationDetailModel {
  const _$ConversationDetailModelImpl({
    this.id,
    @JsonKey(name: 'contact_id') required this.contactId,
    @JsonKey(name: 'phone_number_id') required this.phoneNumberId,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
  });

  factory _$ConversationDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDetailModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'contact_id')
  final int contactId;
  @override
  @JsonKey(name: 'phone_number_id')
  final String phoneNumberId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ConversationDetailModel(id: $id, contactId: $contactId, phoneNumberId: $phoneNumberId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.phoneNumberId, phoneNumberId) ||
                other.phoneNumberId == phoneNumberId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    contactId,
    phoneNumberId,
    createdAt,
    updatedAt,
  );

  /// Create a copy of ConversationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDetailModelImplCopyWith<_$ConversationDetailModelImpl>
  get copyWith =>
      __$$ConversationDetailModelImplCopyWithImpl<
        _$ConversationDetailModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationDetailModelImplToJson(this);
  }
}

abstract class _ConversationDetailModel implements ConversationDetailModel {
  const factory _ConversationDetailModel({
    final int? id,
    @JsonKey(name: 'contact_id') required final int contactId,
    @JsonKey(name: 'phone_number_id') required final String phoneNumberId,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
  }) = _$ConversationDetailModelImpl;

  factory _ConversationDetailModel.fromJson(Map<String, dynamic> json) =
      _$ConversationDetailModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'contact_id')
  int get contactId;
  @override
  @JsonKey(name: 'phone_number_id')
  String get phoneNumberId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of ConversationDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationDetailModelImplCopyWith<_$ConversationDetailModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
