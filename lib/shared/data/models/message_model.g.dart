// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: (json['id'] as num).toInt(),
      direction: json['direction'] as String,
      messageType: json['message_type'] as String,
      textContent: json['text_content'] as String?,
      messageTimestamp: DateTime.parse(json['message_timestamp'] as String),
      mediaUrl: json['media_url'] as String?,
      caption: json['caption'] as String?,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direction': instance.direction,
      'message_type': instance.messageType,
      'text_content': instance.textContent,
      'message_timestamp': instance.messageTimestamp.toIso8601String(),
      'media_url': instance.mediaUrl,
      'caption': instance.caption,
    };
