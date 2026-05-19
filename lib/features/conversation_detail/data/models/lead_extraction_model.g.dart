// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_extraction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadExtractionModelImpl _$$LeadExtractionModelImplFromJson(
  Map<String, dynamic> json,
) => _$LeadExtractionModelImpl(
  intent: json['intent'] as String,
  summary: json['summary'] as String,
  location: json['location'] as String?,
  products: (json['products'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  customerNeeds: (json['customer_needs'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  budgetHint: json['budget_hint'] as String?,
  leadTemperature: json['lead_temperature'] as String,
);

Map<String, dynamic> _$$LeadExtractionModelImplToJson(
  _$LeadExtractionModelImpl instance,
) => <String, dynamic>{
  'intent': instance.intent,
  'summary': instance.summary,
  'location': instance.location,
  'products': instance.products,
  'customer_needs': instance.customerNeeds,
  'budget_hint': instance.budgetHint,
  'lead_temperature': instance.leadTemperature,
};
