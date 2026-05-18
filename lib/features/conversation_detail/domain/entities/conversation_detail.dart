import 'package:equatable/equatable.dart';
import 'message.dart';

class ConversationDetail extends Equatable {
  final String id;
  final String title;
  final String participantName;
  final String? participantAvatarUrl;
  final List<Message> messages;

  const ConversationDetail({
    required this.id,
    required this.title,
    required this.participantName,
    this.participantAvatarUrl,
    required this.messages,
  });

  @override
  List<Object?> get props => [id, title, participantName, participantAvatarUrl, messages];
}
