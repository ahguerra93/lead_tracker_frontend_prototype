import 'package:equatable/equatable.dart';

class Message extends Equatable {
  final String id;
  final String content;
  final DateTime sentAt;
  final bool isFromMe;
  final String senderName;

  const Message({
    required this.id,
    required this.content,
    required this.sentAt,
    required this.isFromMe,
    required this.senderName,
  });

  @override
  List<Object?> get props => [id, content, sentAt, isFromMe, senderName];
}
