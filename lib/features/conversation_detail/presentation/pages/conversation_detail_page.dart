import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../../../di/di.dart';
import '../cubit/conversation_detail_cubit.dart';
import '../cubit/conversation_detail_state.dart';
import '../cubit/lead_insight_cubit.dart';
import '../widgets/lead_insight_section.dart';
import '../widgets/message_bubble.dart';

class ConversationDetailPage extends StatelessWidget {
  final String conversationId;

  const ConversationDetailPage({super.key, required this.conversationId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ConversationDetailCubit>()..loadConversationDetail(conversationId)),
        BlocProvider(create: (_) => getIt<LeadInsightCubit>()..loadLeadInsight(conversationId)),
      ],
      child: const _ConversationDetailView(),
    );
  }
}

class _ConversationDetailView extends StatelessWidget {
  const _ConversationDetailView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversation Detail'),
        actions: [IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.spacingMd),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contact section — driven by ConversationDetailCubit
            BlocBuilder<ConversationDetailCubit, ConversationDetailState>(builder: _buildContactSection),
            const SizedBox(height: AppDimens.spacingMd),

            // AI Lead Summary — driven by LeadInsightCubit (independent)
            const LeadInsightSection(),
            const SizedBox(height: AppDimens.spacingMd),

            // Messages header + list — driven by ConversationDetailCubit
            Text('Last 5 Messages', style: AppTextStyles.titleSmall),
            const SizedBox(height: AppDimens.spacingSm),
            Expanded(
              child: BlocBuilder<ConversationDetailCubit, ConversationDetailState>(builder: _buildMessagesSection),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactSection(BuildContext context, ConversationDetailState state) {
    return switch (state) {
      ConversationDetailLoading() => const Center(child: CircularProgressIndicator()),
      ConversationDetailLoaded(:final detail) => Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.spacingMd),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(detail.contact.name, style: AppTextStyles.titleMedium),
              const SizedBox(height: AppDimens.spacingSm),
              Text(detail.contact.waId, style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary)),
            ],
          ),
        ),
      ),
      ConversationDetailError(:final message) => Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.spacingMd),
          child: Row(
            children: [
              Icon(Icons.error_outline, size: AppDimens.iconMd, color: Theme.of(context).colorScheme.error),
              const SizedBox(width: AppDimens.spacingSm),
              Expanded(
                child: Text(message, style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary)),
              ),
            ],
          ),
        ),
      ),
      _ => const SizedBox.shrink(),
    };
  }

  Widget _buildMessagesSection(BuildContext context, ConversationDetailState state) {
    return switch (state) {
      ConversationDetailLoading() => const Center(child: CircularProgressIndicator()),
      ConversationDetailLoaded(:final detail) =>
        detail.messages.isEmpty
            ? const Center(child: Text('No messages yet'))
            : ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: detail.messages.take(5).length,
                itemBuilder: (context, index) {
                  final message = detail.messages.take(5).toList()[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppDimens.spacingSm),
                    child: MessageBubble(message: message),
                  );
                },
              ),
      ConversationDetailError(:final message) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 48, color: Theme.of(context).colorScheme.error),
            const SizedBox(height: AppDimens.spacingMd),
            Text('Failed to load messages', style: AppTextStyles.titleMedium),
            const SizedBox(height: AppDimens.spacingSm),
            Text(
              message,
              style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      _ => const SizedBox.shrink(),
    };
  }
}
