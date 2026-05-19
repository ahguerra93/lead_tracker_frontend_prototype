// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ConversationDetail {
  int? get id => throw _privateConstructorUsedError;
  int get contactId => throw _privateConstructorUsedError;
  String get phoneNumberId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Contact get contact => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  /// Create a copy of ConversationDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationDetailCopyWith<ConversationDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDetailCopyWith<$Res> {
  factory $ConversationDetailCopyWith(
    ConversationDetail value,
    $Res Function(ConversationDetail) then,
  ) = _$ConversationDetailCopyWithImpl<$Res, ConversationDetail>;
  @useResult
  $Res call({
    int? id,
    int contactId,
    String phoneNumberId,
    DateTime createdAt,
    DateTime updatedAt,
    Contact contact,
    List<Message> messages,
  });

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$ConversationDetailCopyWithImpl<$Res, $Val extends ConversationDetail>
    implements $ConversationDetailCopyWith<$Res> {
  _$ConversationDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationDetail
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
    Object? messages = null,
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
                      as Contact,
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<Message>,
          )
          as $Val,
    );
  }

  /// Create a copy of ConversationDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationDetailImplCopyWith<$Res>
    implements $ConversationDetailCopyWith<$Res> {
  factory _$$ConversationDetailImplCopyWith(
    _$ConversationDetailImpl value,
    $Res Function(_$ConversationDetailImpl) then,
  ) = __$$ConversationDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    int contactId,
    String phoneNumberId,
    DateTime createdAt,
    DateTime updatedAt,
    Contact contact,
    List<Message> messages,
  });

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$ConversationDetailImplCopyWithImpl<$Res>
    extends _$ConversationDetailCopyWithImpl<$Res, _$ConversationDetailImpl>
    implements _$$ConversationDetailImplCopyWith<$Res> {
  __$$ConversationDetailImplCopyWithImpl(
    _$ConversationDetailImpl _value,
    $Res Function(_$ConversationDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConversationDetail
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
    Object? messages = null,
  }) {
    return _then(
      _$ConversationDetailImpl(
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
                  as Contact,
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<Message>,
      ),
    );
  }
}

/// @nodoc

class _$ConversationDetailImpl implements _ConversationDetail {
  const _$ConversationDetailImpl({
    this.id,
    required this.contactId,
    required this.phoneNumberId,
    required this.createdAt,
    required this.updatedAt,
    required this.contact,
    required final List<Message> messages,
  }) : _messages = messages;

  @override
  final int? id;
  @override
  final int contactId;
  @override
  final String phoneNumberId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Contact contact;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ConversationDetail(id: $id, contactId: $contactId, phoneNumberId: $phoneNumberId, createdAt: $createdAt, updatedAt: $updatedAt, contact: $contact, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationDetailImpl &&
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
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    contactId,
    phoneNumberId,
    createdAt,
    updatedAt,
    contact,
    const DeepCollectionEquality().hash(_messages),
  );

  /// Create a copy of ConversationDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDetailImplCopyWith<_$ConversationDetailImpl> get copyWith =>
      __$$ConversationDetailImplCopyWithImpl<_$ConversationDetailImpl>(
        this,
        _$identity,
      );
}

abstract class _ConversationDetail implements ConversationDetail {
  const factory _ConversationDetail({
    final int? id,
    required final int contactId,
    required final String phoneNumberId,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required final Contact contact,
    required final List<Message> messages,
  }) = _$ConversationDetailImpl;

  @override
  int? get id;
  @override
  int get contactId;
  @override
  String get phoneNumberId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Contact get contact;
  @override
  List<Message> get messages;

  /// Create a copy of ConversationDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationDetailImplCopyWith<_$ConversationDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
