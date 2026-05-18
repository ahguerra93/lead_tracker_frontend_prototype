import 'package:equatable/equatable.dart';
import '../../domain/entities/conversation_detail.dart';

abstract class ConversationDetailState extends Equatable {
  const ConversationDetailState();

  @override
  List<Object?> get props => [];
}

class ConversationDetailInitial extends ConversationDetailState {
  const ConversationDetailInitial();
}

class ConversationDetailLoading extends ConversationDetailState {
  const ConversationDetailLoading();
}

class ConversationDetailLoaded extends ConversationDetailState {
  final ConversationDetail detail;

  const ConversationDetailLoaded(this.detail);

  @override
  List<Object?> get props => [detail];
}

class ConversationDetailError extends ConversationDetailState {
  final String message;

  const ConversationDetailError(this.message);

  @override
  List<Object?> get props => [message];
}
