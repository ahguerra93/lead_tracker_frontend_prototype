import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../../../di/di.dart';
import '../cubit/conversation_detail_cubit.dart';
import '../cubit/conversation_detail_state.dart';
import '../widgets/message_bubble.dart';

class ConversationDetailPage extends StatelessWidget {
  final String conversationId;

  const ConversationDetailPage({super.key, required this.conversationId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ConversationDetailCubit>()..loadConversationDetail(conversationId),
      child: const _ConversationDetailView(),
    );
  }
}

class _ConversationDetailView extends StatelessWidget {
  const _ConversationDetailView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConversationDetailCubit, ConversationDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Conversation Detail'),
            actions: [IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})],
          ),
          body: switch (state) {
            ConversationDetailInitial() => const Center(child: Text('Select a conversation')),
            ConversationDetailLoading() => const Center(child: CircularProgressIndicator()),
            ConversationDetailLoaded(:final detail) => Padding(
              padding: const EdgeInsets.all(AppDimens.spacingMd),
              // padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Contact Header
                  Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(AppDimens.spacingMd),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(detail.contact.name, style: AppTextStyles.titleMedium),
                          const SizedBox(height: AppDimens.spacingSm),
                          Text(
                            detail.contact.waId,
                            style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: AppDimens.spacingMd),

                  // Messages Section
                  Text('Last 5 Messages', style: AppTextStyles.titleSmall),
                  const SizedBox(height: AppDimens.spacingSm),

                  // Messages List (up to 5 most recent)
                  Expanded(
                    child: detail.messages.isEmpty
                        ? const Center(child: Text('No messages yet'))
                        : ListView.builder(
                            itemCount: detail.messages.take(5).length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              final message = detail.messages[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: AppDimens.spacingSm),
                                child: MessageBubble(message: message),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
            ConversationDetailError(:final message) => Center(
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.spacingLg),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.error_outline, size: 48, color: Theme.of(context).colorScheme.error),
                    const SizedBox(height: AppDimens.spacingMd),
                    Text('Failed to load conversation', style: AppTextStyles.titleMedium),
                    const SizedBox(height: AppDimens.spacingSm),
                    Text(
                      message,
                      style: AppTextStyles.bodySmall.copyWith(color: context.colors.textSecondary),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            _ => const Center(child: Text('Unknown state')),
          },
        );
      },
    );
  }
}
