import '../entities/conversation.dart';
import '../repositories/conversations_repository.dart';

class GetConversationsUseCase {
  final ConversationsRepository _repository;

  const GetConversationsUseCase(this._repository);

  Future<List<Conversation>> call() => _repository.getConversations();
}
