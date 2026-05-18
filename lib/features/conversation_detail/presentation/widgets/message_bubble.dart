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
    return Align(
      alignment: message.isFromMe ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.72),
        child: Container(
          margin: EdgeInsets.only(
            top: AppDimens.spacingXs,
            bottom: AppDimens.spacingXs,
            left: message.isFromMe ? AppDimens.spacingXxl : AppDimens.spacingMd,
            right: message.isFromMe ? AppDimens.spacingMd : AppDimens.spacingXxl,
          ),
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMd, vertical: AppDimens.spacingSm + 2),
          decoration: BoxDecoration(
            color: message.isFromMe ? AppColors.primary : AppColors.surfaceSoft,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(AppDimens.radiusLg),
              topRight: const Radius.circular(AppDimens.radiusLg),
              bottomLeft: Radius.circular(message.isFromMe ? AppDimens.radiusLg : AppDimens.radiusXs),
              bottomRight: Radius.circular(message.isFromMe ? AppDimens.radiusXs : AppDimens.radiusLg),
            ),
            border: message.isFromMe ? null : Border.all(color: AppColors.border),
          ),
          child: Column(
            crossAxisAlignment: message.isFromMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                message.content,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: message.isFromMe ? AppColors.textOnPrimary : AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: AppDimens.spacingXs),
              Text(
                _formatTime(message.sentAt),
                style: AppTextStyles.labelSmall.copyWith(
                  fontSize: 10,
                  color: message.isFromMe ? AppColors.textOnPrimary.withValues(alpha: 0.7) : AppColors.textSecondary,
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
