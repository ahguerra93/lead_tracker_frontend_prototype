import 'package:flutter/material.dart';
import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../domain/entities/message.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Align(
      alignment: message.isOutgoing ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.72),
        child: Container(
          margin: EdgeInsets.only(
            top: AppDimens.spacingXs,
            bottom: AppDimens.spacingXs,
            left: message.isOutgoing ? AppDimens.spacingXxl : AppDimens.spacingMd,
            right: message.isOutgoing ? AppDimens.spacingMd : AppDimens.spacingXxl,
          ),
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMd, vertical: AppDimens.spacingSm + 2),
          decoration: BoxDecoration(
            color: message.isOutgoing ? colors.primary : colors.surfaceSoft,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(AppDimens.radiusLg),
              topRight: const Radius.circular(AppDimens.radiusLg),
              bottomLeft: Radius.circular(message.isOutgoing ? AppDimens.radiusLg : AppDimens.radiusXs),
              bottomRight: Radius.circular(message.isOutgoing ? AppDimens.radiusXs : AppDimens.radiusLg),
            ),
            border: message.isOutgoing ? null : Border.all(color: colors.border),
          ),
          child: Column(
            crossAxisAlignment: message.isOutgoing ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                message.textContent,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: message.isOutgoing ? colors.textOnPrimary : colors.textPrimary,
                ),
              ),
              const SizedBox(height: AppDimens.spacingXs),
              Text(
                _formatTime(message.messageTimestamp),
                style: AppTextStyles.labelSmall.copyWith(
                  fontSize: 10,
                  color: message.isOutgoing ? colors.textOnPrimary.withValues(alpha: 0.7) : colors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final h = dateTime.hour.toString().padLeft(2, '0');
    final m = dateTime.minute.toString().padLeft(2, '0');
    return '$h:$m';
  }
}
