// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationDetailModelImpl _$$ConversationDetailModelImplFromJson(
  Map<String, dynamic> json,
) => _$ConversationDetailModelImpl(
  id: (json['id'] as num?)?.toInt(),
  contactId: (json['contact_id'] as num).toInt(),
  phoneNumberId: json['phone_number_id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$ConversationDetailModelImplToJson(
  _$ConversationDetailModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'contact_id': instance.contactId,
  'phone_number_id': instance.phoneNumberId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
