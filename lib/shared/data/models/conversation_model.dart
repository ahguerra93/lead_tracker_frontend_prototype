import 'package:freezed_annotation/freezed_annotation.dart';
import 'contact_model.dart';
import 'message_model.dart';

part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@freezed
class ConversationModel with _$ConversationModel {
  const factory ConversationModel({
    int? id,
    @JsonKey(name: 'contact_id') required int contactId,
    @JsonKey(name: 'phone_number_id') required String phoneNumberId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required ContactModel contact,
    @JsonKey(name: 'last_message') required MessageModel lastMessage,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) => _$ConversationModelFromJson(json);
}
