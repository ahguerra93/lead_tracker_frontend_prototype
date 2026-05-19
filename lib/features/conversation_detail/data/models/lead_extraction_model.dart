import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_extraction_model.freezed.dart';
part 'lead_extraction_model.g.dart';

@freezed
class LeadExtractionModel with _$LeadExtractionModel {
  const factory LeadExtractionModel({
    required String intent,
    required String summary,
    String? location,
    required List<String> products,
    @JsonKey(name: 'customer_needs') required List<String> customerNeeds,
    @JsonKey(name: 'budget_hint') String? budgetHint,
    @JsonKey(name: 'lead_temperature') required String leadTemperature,
  }) = _LeadExtractionModel;

  factory LeadExtractionModel.fromJson(Map<String, dynamic> json) => _$LeadExtractionModelFromJson(json);
}
