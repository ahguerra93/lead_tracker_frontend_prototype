import '../entities/conversation_detail.dart';

abstract interface class ConversationDetailRepository {
  Future<ConversationDetail> getConversationDetail(String conversationId);
}
