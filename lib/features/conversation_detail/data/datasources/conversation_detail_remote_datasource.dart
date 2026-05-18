import 'package:dio/dio.dart';
import '../models/conversation_detail_model.dart';

abstract interface class ConversationDetailRemoteDataSource {
  Future<ConversationDetailModel> getConversationDetail(String conversationId);
}

class ConversationDetailRemoteDataSourceImpl implements ConversationDetailRemoteDataSource {
  final Dio _dio;

  const ConversationDetailRemoteDataSourceImpl(this._dio);

  @override
  Future<ConversationDetailModel> getConversationDetail(String conversationId) async {
    final response = await _dio.get<Map<String, dynamic>>('/conversations/$conversationId');
    return ConversationDetailModel.fromJson(response.data!);
  }
}
