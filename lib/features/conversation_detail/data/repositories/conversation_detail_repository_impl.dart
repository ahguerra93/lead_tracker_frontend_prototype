import '../../domain/entities/conversation_detail.dart';
import '../../domain/repositories/conversation_detail_repository.dart';
import '../datasources/conversation_detail_remote_datasource.dart';

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
    );
  }
}
