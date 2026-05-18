import 'package:equatable/equatable.dart';

class Conversation extends Equatable {
  final String id;
  final String title;
  final String lastMessage;
  final DateTime lastMessageAt;
  final String participantName;
  final String? participantAvatarUrl;
  final int unreadCount;

  const Conversation({
    required this.id,
    required this.title,
    required this.lastMessage,
    required this.lastMessageAt,
    required this.participantName,
    this.participantAvatarUrl,
    this.unreadCount = 0,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    lastMessage,
    lastMessageAt,
    participantName,
    participantAvatarUrl,
    unreadCount,
  ];
}
