import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../../../config/routing/router.dart';
import '../../../../di/di.dart';
import '../cubit/conversations_cubit.dart';
import '../cubit/conversations_state.dart';
import '../widgets/conversation_tile.dart';

class ConversationsPage extends StatelessWidget {
  const ConversationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ConversationsCubit>()..loadConversations(),
      child: const _ConversationsView(),
    );
  }
}

class _ConversationsView extends StatelessWidget {
  const _ConversationsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversations', style: AppTextStyles.titleLarge),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          const SizedBox(width: AppDimens.spacingSm),
        ],
      ),
      body: BlocBuilder<ConversationsCubit, ConversationsState>(
        builder: (context, state) {
          return switch (state) {
            ConversationsLoading() => const Center(child: CircularProgressIndicator()),
            ConversationsLoaded(:final conversations) when conversations.isEmpty => _EmptyState(),
            ConversationsLoaded(:final conversations) => ListView.separated(
              itemCount: conversations.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) => ConversationTile(
                conversation: conversations[index],
                onTap: () => context.push('${AppRoutes.conversationDetail}/${conversations[index].id}'),
              ),
            ),
            ConversationsError(:final message) => _ErrorState(
              message: message,
              onRetry: () => context.read<ConversationsCubit>().loadConversations(),
            ),
            _ => const SizedBox.shrink(),
          };
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.edit, color: AppColors.textOnPrimary),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.chat_bubble_outline, size: 64, color: AppColors.textSecondary),
          const SizedBox(height: AppDimens.spacingMd),
          Text('No conversations yet', style: AppTextStyles.titleMedium.copyWith(color: AppColors.textSecondary)),
          const SizedBox(height: AppDimens.spacingSm),
          Text('Start a new conversation', style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary)),
        ],
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorState({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.spacingLg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48, color: AppColors.error),
            const SizedBox(height: AppDimens.spacingMd),
            Text('Something went wrong', style: AppTextStyles.titleMedium),
            const SizedBox(height: AppDimens.spacingSm),
            Text(
              message,
              style: AppTextStyles.bodySmall.copyWith(color: AppColors.textSecondary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppDimens.spacingLg),
            ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
          ],
        ),
      ),
    );
  }
}
