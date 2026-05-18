import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../../../di/di.dart';
import '../cubit/conversation_detail_cubit.dart';
import '../cubit/conversation_detail_state.dart';

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _DetailRow('Contact ID:', detail.contactId.toString()),
                  const SizedBox(height: AppDimens.spacingSm),
                  _DetailRow('Phone Number ID:', detail.phoneNumberId),
                  const SizedBox(height: AppDimens.spacingSm),
                  _DetailRow('Created:', _formatDateTime(detail.createdAt)),
                  const SizedBox(height: AppDimens.spacingSm),
                  _DetailRow('Updated:', _formatDateTime(detail.updatedAt)),
                ],
              ),
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
            _ => const Center(child: Text('Unknown state')),
          },
        );
      },
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} '
        '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _DetailRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label, style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(width: AppDimens.spacingSm),
        Expanded(
          child: Text(value, style: AppTextStyles.bodyMedium, overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
