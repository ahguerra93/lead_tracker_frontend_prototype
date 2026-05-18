import '../entities/conversation.dart';

abstract interface class ConversationsRepository {
  Future<List<Conversation>> getConversations();
}
