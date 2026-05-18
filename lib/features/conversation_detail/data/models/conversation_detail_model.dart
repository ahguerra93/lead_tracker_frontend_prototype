import '../../domain/entities/message.dart';

class MessageModel extends Message {
  const MessageModel({
    required super.id,
    required super.content,
    required super.sentAt,
    required super.isFromMe,
    required super.senderName,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
    id: json['id'] as String,
    content: json['content'] as String,
    sentAt: DateTime.parse(json['sent_at'] as String),
    isFromMe: json['is_from_me'] as bool,
    senderName: json['sender_name'] as String,
  );
}
