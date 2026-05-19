// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationModelImpl _$$ConversationModelImplFromJson(
  Map<String, dynamic> json,
) => _$ConversationModelImpl(
  id: (json['id'] as num?)?.toInt(),
  contactId: (json['contact_id'] as num).toInt(),
  phoneNumberId: json['phone_number_id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  contact: ContactModel.fromJson(json['contact'] as Map<String, dynamic>),
  lastMessage: MessageModel.fromJson(
    json['last_message'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$ConversationModelImplToJson(
  _$ConversationModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'contact_id': instance.contactId,
  'phone_number_id': instance.phoneNumberId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'contact': instance.contact,
  'last_message': instance.lastMessage,
};
