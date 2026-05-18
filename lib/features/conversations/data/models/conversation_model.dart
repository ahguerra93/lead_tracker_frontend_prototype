import '../../domain/entities/conversation.dart';

class ConversationModel extends Conversation {
  const ConversationModel({
    required super.id,
    required super.title,
    required super.lastMessage,
    required super.lastMessageAt,
    required super.participantName,
    super.participantAvatarUrl,
    super.unreadCount,
  });

  factory ConversationModel.fromJson(Map<String, dynamic> json) => ConversationModel(
    id: json['id'] as String,
    title: json['title'] as String,
    lastMessage: json['last_message'] as String,
    lastMessageAt: DateTime.parse(json['last_message_at'] as String),
    participantName: json['participant_name'] as String,
    participantAvatarUrl: json['participant_avatar_url'] as String?,
    unreadCount: (json['unread_count'] as int?) ?? 0,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'last_message': lastMessage,
    'last_message_at': lastMessageAt.toIso8601String(),
    'participant_name': participantName,
    'participant_avatar_url': participantAvatarUrl,
    'unread_count': unreadCount,
  };
}
