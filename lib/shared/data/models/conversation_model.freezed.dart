// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) {
  return _ConversationModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_id')
  int get contactId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number_id')
  String get phoneNumberId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  ContactModel get contact => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message')
  MessageModel get lastMessage => throw _privateConstructorUsedError;

  /// Serializes this ConversationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationModelCopyWith<ConversationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationModelCopyWith<$Res> {
  factory $ConversationModelCopyWith(
    ConversationModel value,
    $Res Function(ConversationModel) then,
  ) = _$ConversationModelCopyWithImpl<$Res, ConversationModel>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'contact_id') int contactId,
    @JsonKey(name: 'phone_number_id') String phoneNumberId,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    ContactModel contact,
    @JsonKey(name: 'last_message') MessageModel lastMessage,
  });

  $ContactModelCopyWith<$Res> get contact;
  $MessageModelCopyWith<$Res> get lastMessage;
}

/// @nodoc
class _$ConversationModelCopyWithImpl<$Res, $Val extends ConversationModel>
    implements $ConversationModelCopyWith<$Res> {
  _$ConversationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? contactId = null,
    Object? phoneNumberId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? contact = null,
    Object? lastMessage = null,
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
            contact: null == contact
                ? _value.contact
                : contact // ignore: cast_nullable_to_non_nullable
                      as ContactModel,
            lastMessage: null == lastMessage
                ? _value.lastMessage
                : lastMessage // ignore: cast_nullable_to_non_nullable
                      as MessageModel,
          )
          as $Val,
    );
  }

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<$Res> get contact {
    return $ContactModelCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res> get lastMessage {
    return $MessageModelCopyWith<$Res>(_value.lastMessage, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationModelImplCopyWith<$Res>
    implements $ConversationModelCopyWith<$Res> {
  factory _$$ConversationModelImplCopyWith(
    _$ConversationModelImpl value,
    $Res Function(_$ConversationModelImpl) then,
  ) = __$$ConversationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: 'contact_id') int contactId,
    @JsonKey(name: 'phone_number_id') String phoneNumberId,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    ContactModel contact,
    @JsonKey(name: 'last_message') MessageModel lastMessage,
  });

  @override
  $ContactModelCopyWith<$Res> get contact;
  @override
  $MessageModelCopyWith<$Res> get lastMessage;
}

/// @nodoc
class __$$ConversationModelImplCopyWithImpl<$Res>
    extends _$ConversationModelCopyWithImpl<$Res, _$ConversationModelImpl>
    implements _$$ConversationModelImplCopyWith<$Res> {
  __$$ConversationModelImplCopyWithImpl(
    _$ConversationModelImpl _value,
    $Res Function(_$ConversationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? contactId = null,
    Object? phoneNumberId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? contact = null,
    Object? lastMessage = null,
  }) {
    return _then(
      _$ConversationModelImpl(
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
        contact: null == contact
            ? _value.contact
            : contact // ignore: cast_nullable_to_non_nullable
                  as ContactModel,
        lastMessage: null == lastMessage
            ? _value.lastMessage
            : lastMessage // ignore: cast_nullable_to_non_nullable
                  as MessageModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationModelImpl implements _ConversationModel {
  const _$ConversationModelImpl({
    this.id,
    @JsonKey(name: 'contact_id') required this.contactId,
    @JsonKey(name: 'phone_number_id') required this.phoneNumberId,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
    required this.contact,
    @JsonKey(name: 'last_message') required this.lastMessage,
  });

  factory _$ConversationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationModelImplFromJson(json);

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
  final ContactModel contact;
  @override
  @JsonKey(name: 'last_message')
  final MessageModel lastMessage;

  @override
  String toString() {
    return 'ConversationModel(id: $id, contactId: $contactId, phoneNumberId: $phoneNumberId, createdAt: $createdAt, updatedAt: $updatedAt, contact: $contact, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.phoneNumberId, phoneNumberId) ||
                other.phoneNumberId == phoneNumberId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
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
    contact,
    lastMessage,
  );

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationModelImplCopyWith<_$ConversationModelImpl> get copyWith =>
      __$$ConversationModelImplCopyWithImpl<_$ConversationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationModelImplToJson(this);
  }
}

abstract class _ConversationModel implements ConversationModel {
  const factory _ConversationModel({
    final int? id,
    @JsonKey(name: 'contact_id') required final int contactId,
    @JsonKey(name: 'phone_number_id') required final String phoneNumberId,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
    required final ContactModel contact,
    @JsonKey(name: 'last_message') required final MessageModel lastMessage,
  }) = _$ConversationModelImpl;

  factory _ConversationModel.fromJson(Map<String, dynamic> json) =
      _$ConversationModelImpl.fromJson;

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
  @override
  ContactModel get contact;
  @override
  @JsonKey(name: 'last_message')
  MessageModel get lastMessage;

  /// Create a copy of ConversationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationModelImplCopyWith<_$ConversationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
