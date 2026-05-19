import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
class ContactModel with _$ContactModel {
  const factory ContactModel({@JsonKey(name: 'wa_id') required String waId, required String name}) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) => _$ContactModelFromJson(json);
}
