import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_detail_model.freezed.dart';
part 'conversation_detail_model.g.dart';

@freezed
class ConversationDetailModel with _$ConversationDetailModel {
  const factory ConversationDetailModel({
    int? id,
    @JsonKey(name: 'contact_id') required int contactId,
    @JsonKey(name: 'phone_number_id') required String phoneNumberId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _ConversationDetailModel;

  factory ConversationDetailModel.fromJson(Map<String, dynamic> json) => _$ConversationDetailModelFromJson(json);
}
