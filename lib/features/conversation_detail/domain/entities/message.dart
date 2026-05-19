import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
class Message with _$Message {
  const Message._();

  const factory Message({
    required int id,
    required String direction,
    required String messageType,
    required String textContent,
    required DateTime messageTimestamp,
  }) = _Message;

  bool get isIncoming => direction == 'incoming';
  bool get isOutgoing => direction == 'outgoing';
}
