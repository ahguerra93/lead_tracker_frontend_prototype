import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_extraction.freezed.dart';

@freezed
class LeadExtraction with _$LeadExtraction {
  const factory LeadExtraction({
    required String intent,
    required String summary,
    String? location,
    required List<String> products,
    required List<String> customerNeeds,
    String? budgetHint,
    required String leadTemperature,
  }) = _LeadExtraction;
}
