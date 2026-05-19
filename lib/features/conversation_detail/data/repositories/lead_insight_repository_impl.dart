import '../../domain/entities/lead_extraction.dart';
import '../../domain/repositories/lead_insight_repository.dart';
import '../datasources/lead_insight_remote_datasource.dart';

class LeadInsightRepositoryImpl implements LeadInsightRepository {
  final LeadInsightRemoteDataSource _dataSource;

  const LeadInsightRepositoryImpl(this._dataSource);

  @override
  Future<LeadExtraction> getLeadInsight(String conversationId) async {
    final model = await _dataSource.getLeadInsight(conversationId);
    return LeadExtraction(
      intent: model.intent,
      summary: model.summary,
      location: model.location,
      products: model.products,
      customerNeeds: model.customerNeeds,
      budgetHint: model.budgetHint,
      leadTemperature: model.leadTemperature,
    );
  }
}
