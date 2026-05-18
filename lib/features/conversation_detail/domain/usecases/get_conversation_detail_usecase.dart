import '../entities/conversation_detail.dart';
import '../repositories/conversation_detail_repository.dart';

class GetConversationDetailUseCase {
  final ConversationDetailRepository _repository;

  const GetConversationDetailUseCase(this._repository);

  Future<ConversationDetail> call(String conversationId) => _repository.getConversationDetail(conversationId);
}
