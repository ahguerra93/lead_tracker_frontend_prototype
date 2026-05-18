import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_conversation_detail_usecase.dart';
import 'conversation_detail_state.dart';

class ConversationDetailCubit extends Cubit<ConversationDetailState> {
  final GetConversationDetailUseCase _getConversationDetail;

  ConversationDetailCubit(this._getConversationDetail) : super(const ConversationDetailInitial());

  Future<void> loadConversationDetail(String conversationId) async {
    emit(const ConversationDetailLoading());
    try {
      final detail = await _getConversationDetail(conversationId);
      emit(ConversationDetailLoaded(detail));
    } catch (e) {
      emit(ConversationDetailError(e.toString()));
    }
  }
}
