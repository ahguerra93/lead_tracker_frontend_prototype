import '../entities/lead_extraction.dart';
import '../repositories/lead_insight_repository.dart';

class GetLeadInsightUseCase {
  final LeadInsightRepository _repository;

  const GetLeadInsightUseCase(this._repository);

  Future<LeadExtraction> call(String conversationId) => _repository.getLeadInsight(conversationId);
}
