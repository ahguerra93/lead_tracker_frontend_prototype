import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_conversations_usecase.dart';
import 'conversations_state.dart';

class ConversationsCubit extends Cubit<ConversationsState> {
  final GetConversationsUseCase _getConversations;

  ConversationsCubit(this._getConversations) : super(const ConversationsInitial());

  Future<void> loadConversations() async {
    emit(const ConversationsLoading());
    try {
      final conversations = await _getConversations();
      emit(ConversationsLoaded(conversations));
    } catch (e) {
      emit(ConversationsError(e.toString()));
    }
  }
}
