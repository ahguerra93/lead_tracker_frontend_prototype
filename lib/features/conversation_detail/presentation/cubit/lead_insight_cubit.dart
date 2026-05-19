import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_lead_insight_usecase.dart';
import 'lead_insight_state.dart';

class LeadInsightCubit extends Cubit<LeadInsightState> {
  final GetLeadInsightUseCase _getLeadInsight;

  LeadInsightCubit(this._getLeadInsight) : super(const LeadInsightInitial());

  Future<void> loadLeadInsight(String conversationId) async {
    emit(const LeadInsightLoading());
    try {
      final extraction = await _getLeadInsight(conversationId);
      emit(LeadInsightLoaded(extraction));
    } catch (e) {
      emit(LeadInsightError(e.toString()));
    }
  }
}
