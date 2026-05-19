import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_tracker_frontend_prototype/features/conversation_detail/domain/entities/message.dart';
import 'contact.dart';

part 'conversation.freezed.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    int? id,
    required int contactId,
    required String phoneNumberId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Contact contact,
    required Message lastMessage,
  }) = _Conversation;
}
