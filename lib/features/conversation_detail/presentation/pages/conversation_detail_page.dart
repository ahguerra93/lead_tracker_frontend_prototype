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
            title: state is ConversationDetailLoaded
                ? Row(
                    children: [
                      CircleAvatar(
                        radius: AppDimens.avatarSm / 2,
                        backgroundColor: AppColors.primaryContainer,
                        child: Text(
                          state.detail.participantName.isNotEmpty ? state.detail.participantName[0].toUpperCase() : '?',
                          style: AppTextStyles.titleSmall.copyWith(color: AppColors.primary),
                        ),
                      ),
                      const SizedBox(width: AppDimens.spacingSm),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.detail.participantName,
                              style: AppTextStyles.titleMedium,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Active now',
                              style: AppTextStyles.bodySmall.copyWith(color: AppColors.success, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : const Text('Conversation'),
            actions: [IconButton(icon: const Icon(Icons.more_vert), onPressed: () {})],
          ),
          body: switch (state) {
            ConversationDetailLoading() => const Center(child: CircularProgressIndicator()),
            ConversationDetailLoaded(:final detail) => Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: AppDimens.spacingMd),
                    reverse: true,
                    itemCount: detail.messages.length,
                    itemBuilder: (_, index) {
                      final messages = detail.messages.reversed.toList();
                      return MessageBubble(message: messages[index]);
                    },
                  ),
                ),
                _MessageInput(),
              ],
            ),
            ConversationDetailError(:final message) => Center(
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.spacingLg),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.error_outline, size: 48, color: AppColors.error),
                    const SizedBox(height: AppDimens.spacingMd),
                    Text('Failed to load conversation', style: AppTextStyles.titleMedium),
                    const SizedBox(height: AppDimens.spacingSm),
                    Text(
                      message,
                      style: AppTextStyles.bodySmall.copyWith(color: AppColors.textSecondary),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            _ => const SizedBox.shrink(),
          },
        );
      },
    );
  }
}

class _MessageInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppDimens.spacingMd,
        right: AppDimens.spacingMd,
        top: AppDimens.spacingSm,
        bottom: AppDimens.spacingSm + MediaQuery.of(context).padding.bottom,
      ),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.border)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message...',
                hintStyle: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radiusFull),
                  borderSide: const BorderSide(color: AppColors.border),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radiusFull),
                  borderSide: const BorderSide(color: AppColors.border),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radiusFull),
                  borderSide: const BorderSide(color: AppColors.primary, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.spacingMd,
                  vertical: AppDimens.spacingSm,
                ),
                filled: true,
                fillColor: AppColors.surfaceSoft,
              ),
              maxLines: 4,
              minLines: 1,
            ),
          ),
          const SizedBox(width: AppDimens.spacingSm),
          Container(
            decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
            child: IconButton(
              icon: const Icon(Icons.send_rounded, color: AppColors.textOnPrimary),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
