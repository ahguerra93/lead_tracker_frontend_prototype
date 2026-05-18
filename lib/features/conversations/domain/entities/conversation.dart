import 'package:equatable/equatable.dart';

class Conversation extends Equatable {
  final int? id;
  final int contactId;
  final String phoneNumberId;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Conversation({
    this.id,
    required this.contactId,
    required this.phoneNumberId,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [id, contactId, phoneNumberId, createdAt, updatedAt];
}
