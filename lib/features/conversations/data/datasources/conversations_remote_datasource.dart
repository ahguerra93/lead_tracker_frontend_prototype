import 'package:dio/dio.dart';
import '../models/conversation_model.dart';

abstract interface class ConversationsRemoteDataSource {
  Future<List<ConversationModel>> getConversations();
}

class ConversationsRemoteDataSourceImpl implements ConversationsRemoteDataSource {
  final Dio _dio;

  const ConversationsRemoteDataSourceImpl(this._dio);

  @override
  Future<List<ConversationModel>> getConversations() async {
    final response = await _dio.get<List<dynamic>>('/conversations');
    return (response.data ?? []).cast<Map<String, dynamic>>().map(ConversationModel.fromJson).toList();
  }
}
