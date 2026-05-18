import 'package:dio/dio.dart';
import '../../domain/entities/conversation_detail.dart';
import '../models/conversation_detail_model.dart';

abstract interface class ConversationDetailRemoteDataSource {
  Future<ConversationDetail> getConversationDetail(String conversationId);
}

class ConversationDetailRemoteDataSourceImpl implements ConversationDetailRemoteDataSource {
  final Dio _dio;

  const ConversationDetailRemoteDataSourceImpl(this._dio);

  @override
  Future<ConversationDetail> getConversationDetail(String conversationId) async {
    final response = await _dio.get<Map<String, dynamic>>('/conversations/$conversationId');
    final data = response.data!;
    final messages = (data['messages'] as List<dynamic>)
        .cast<Map<String, dynamic>>()
        .map(MessageModel.fromJson)
        .toList();
    return ConversationDetail(
      id: data['id'] as String,
      title: data['title'] as String,
      participantName: data['participant_name'] as String,
      participantAvatarUrl: data['participant_avatar_url'] as String?,
      messages: messages,
    );
  }
}
