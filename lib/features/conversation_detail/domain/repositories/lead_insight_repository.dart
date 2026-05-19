import '../entities/lead_extraction.dart';

abstract interface class LeadInsightRepository {
  Future<LeadExtraction> getLeadInsight(String conversationId);
}
