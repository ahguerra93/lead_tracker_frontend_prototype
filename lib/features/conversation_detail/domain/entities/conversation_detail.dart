import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../conversations/domain/entities/contact.dart';
import 'message.dart';

part 'conversation_detail.freezed.dart';

@freezed
class ConversationDetail with _$ConversationDetail {
  const factory ConversationDetail({
    int? id,
    required int contactId,
    required String phoneNumberId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Contact contact,
    required List<Message> messages,
  }) = _ConversationDetail;
}
