// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_insight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadInsightModelImpl _$$LeadInsightModelImplFromJson(
  Map<String, dynamic> json,
) => _$LeadInsightModelImpl(
  id: (json['id'] as num?)?.toInt(),
  conversationId: (json['conversationId'] as num).toInt(),
  intent: json['intent'] as String?,
  summary: json['summary'] as String?,
  location: json['location'] as String?,
  products:
      (json['products'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  customerNeeds:
      (json['customerNeeds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  budgetHint: json['budgetHint'] as String?,
  leadTemperature: json['leadTemperature'] as String?,
  rawAiResponse: json['rawAiResponse'] as Map<String, dynamic>?,
  lastAnalyzedMessageId: (json['lastAnalyzedMessageId'] as num?)?.toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  analyzedAt: DateTime.parse(json['analyzedAt'] as String),
);

Map<String, dynamic> _$$LeadInsightModelImplToJson(
  _$LeadInsightModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'conversationId': instance.conversationId,
  'intent': instance.intent,
  'summary': instance.summary,
  'location': instance.location,
  'products': instance.products,
  'customerNeeds': instance.customerNeeds,
  'budgetHint': instance.budgetHint,
  'leadTemperature': instance.leadTemperature,
  'rawAiResponse': instance.rawAiResponse,
  'lastAnalyzedMessageId': instance.lastAnalyzedMessageId,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'analyzedAt': instance.analyzedAt.toIso8601String(),
};
