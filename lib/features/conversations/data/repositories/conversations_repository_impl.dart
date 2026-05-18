import '../../domain/entities/conversation.dart';
import '../../domain/repositories/conversations_repository.dart';
import '../datasources/conversations_remote_datasource.dart';

class ConversationsRepositoryImpl implements ConversationsRepository {
  final ConversationsRemoteDataSource _dataSource;

  const ConversationsRepositoryImpl(this._dataSource);

  @override
  Future<List<Conversation>> getConversations() async {
    final models = await _dataSource.getConversations();
    return models
        .map(
          (model) => Conversation(
            id: model.id,
            contactId: model.contactId,
            phoneNumberId: model.phoneNumberId,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
          ),
        )
        .toList();
  }
}
