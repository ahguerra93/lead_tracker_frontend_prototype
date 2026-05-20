import '../../domain/entities/conversation_detail.dart';
import '../../domain/entities/message.dart';
import '../../domain/repositories/conversation_detail_repository.dart';
import '../datasources/conversation_detail_remote_datasource.dart';
import '../../../conversations/domain/entities/contact.dart';

class ConversationDetailRepositoryImpl implements ConversationDetailRepository {
  final ConversationDetailRemoteDataSource _dataSource;

  const ConversationDetailRepositoryImpl(this._dataSource);

  @override
  Future<ConversationDetail> getConversationDetail(String conversationId) async {
    final model = await _dataSource.getConversationDetail(conversationId);
    return ConversationDetail(
      id: model.id,
      contactId: model.contactId,
      phoneNumberId: model.phoneNumberId,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      contact: Contact(waId: model.contact.waId, name: model.contact.name),
      messages: model.messages
          .map(
            (messageModel) => Message(
              id: messageModel.id,
              direction: messageModel.direction,
              messageType: messageModel.messageType,
              textContent: messageModel.textContent,
              messageTimestamp: messageModel.messageTimestamp,
              mediaUrl: messageModel.mediaUrl,
              caption: messageModel.caption,
            ),
          )
          .toList(),
    );
  }
}
