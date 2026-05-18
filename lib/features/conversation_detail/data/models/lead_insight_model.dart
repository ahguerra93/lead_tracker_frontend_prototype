import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_insight_model.freezed.dart';
part 'lead_insight_model.g.dart';

@freezed
class LeadInsightModel with _$LeadInsightModel {
  const factory LeadInsightModel({
    int? id,
    required int conversationId,
    String? intent,
    String? summary,
    String? location,
    @Default([]) List<String> products,
    @Default([]) List<String> customerNeeds,
    String? budgetHint,
    String? leadTemperature,
    Map<String, dynamic>? rawAiResponse,
    int? lastAnalyzedMessageId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime analyzedAt,
  }) = _LeadInsightModel;

  factory LeadInsightModel.fromJson(Map<String, dynamic> json) => _$LeadInsightModelFromJson(json);
}
