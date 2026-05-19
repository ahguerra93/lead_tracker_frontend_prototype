import 'package:equatable/equatable.dart';

import '../../domain/entities/lead_extraction.dart';

abstract class LeadInsightState extends Equatable {
  const LeadInsightState();

  @override
  List<Object?> get props => [];
}

class LeadInsightInitial extends LeadInsightState {
  const LeadInsightInitial();
}

class LeadInsightLoading extends LeadInsightState {
  const LeadInsightLoading();
}

class LeadInsightLoaded extends LeadInsightState {
  final LeadExtraction extraction;

  const LeadInsightLoaded(this.extraction);

  @override
  List<Object?> get props => [extraction];
}

class LeadInsightError extends LeadInsightState {
  final String message;

  const LeadInsightError(this.message);

  @override
  List<Object?> get props => [message];
}
