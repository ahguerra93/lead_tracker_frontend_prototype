import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required int id,
    required String direction,
    @JsonKey(name: 'message_type') required String messageType,
    @JsonKey(name: 'text_content') required String textContent,
    @JsonKey(name: 'message_timestamp') required DateTime messageTimestamp,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);
}
