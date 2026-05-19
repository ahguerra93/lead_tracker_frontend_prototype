import 'package:dio/dio.dart';

import '../models/lead_extraction_model.dart';

abstract interface class LeadInsightRemoteDataSource {
  Future<LeadExtractionModel> getLeadInsight(String conversationId);
}

class LeadInsightRemoteDataSourceImpl implements LeadInsightRemoteDataSource {
  final Dio _dio;

  const LeadInsightRemoteDataSourceImpl(this._dio);

  @override
  Future<LeadExtractionModel> getLeadInsight(String conversationId) async {
    final response = await _dio.get<Map<String, dynamic>>('/conversations/$conversationId/lead-extraction');
    return LeadExtractionModel.fromJson(response.data!);
  }
}
