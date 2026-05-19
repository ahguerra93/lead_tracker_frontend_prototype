import 'package:lead_tracker_frontend_prototype/features/conversation_detail/domain/entities/message.dart';

import '../../domain/entities/conversation.dart';
import '../../domain/entities/contact.dart';
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
            contact: Contact(waId: model.contact.waId, name: model.contact.name),
            lastMessage: Message(
              id: model.lastMessage.id,
              direction: model.lastMessage.direction,
              messageType: model.lastMessage.messageType,
              textContent: model.lastMessage.textContent,
              messageTimestamp: model.lastMessage.messageTimestamp,
            ),
          ),
        )
        .toList();
  }
}
