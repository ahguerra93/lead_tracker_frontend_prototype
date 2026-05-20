import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../../../core/storage/media_url_builder.dart';
import '../../domain/entities/message.dart';
import 'media_viewer_dialog.dart';

// ── Public entry point ────────────────────────────────────────────────────────

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final isOutgoing = message.isOutgoing;
    final isMedia = message.isMedia;

    return Align(
      alignment: isOutgoing ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.72),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: AppDimens.spacingXs),
          decoration: BoxDecoration(
            color: isOutgoing ? colors.primary : colors.surfaceSoft,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(AppDimens.radiusLg),
              topRight: const Radius.circular(AppDimens.radiusLg),
              bottomLeft: Radius.circular(isOutgoing ? AppDimens.radiusLg : AppDimens.radiusXs),
              bottomRight: Radius.circular(isOutgoing ? AppDimens.radiusXs : AppDimens.radiusLg),
            ),
            border: isOutgoing ? null : Border.all(color: colors.border),
          ),
          child: SizedBox(
            width: isMedia ? AppDimens.mediaThumbnailSize : null,
            child: Column(
              crossAxisAlignment: isOutgoing ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _BubbleContent(message: message, colors: colors),
                _BubbleTimestamp(message: message, colors: colors),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Content router ────────────────────────────────────────────────────────────

class _BubbleContent extends StatelessWidget {
  final Message message;
  final AppColorTheme colors;

  const _BubbleContent({required this.message, required this.colors});

  @override
  Widget build(BuildContext context) {
    // Resolve the full bucket URL once here; sub-widgets receive a plain String.
    final mediaUrl = message.mediaUrl != null ? GetIt.instance<MediaUrlBuilder>().build(message.mediaUrl!) : null;

    if (message.isImage) {
      return _ImageContent(message: message, colors: colors, mediaUrl: mediaUrl);
    }
    if (message.isVideo) {
      return _VideoContent(message: message, colors: colors, mediaUrl: mediaUrl);
    }
    if (message.isDocument) {
      return _DocumentContent(message: message, colors: colors, mediaUrl: mediaUrl);
    }
    return _TextContent(message: message, colors: colors);
  }
}

// ── Text content ──────────────────────────────────────────────────────────────

class _TextContent extends StatelessWidget {
  final Message message;
  final AppColorTheme colors;

  const _TextContent({required this.message, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppDimens.spacingMd, AppDimens.spacingSm + 2, AppDimens.spacingMd, 0),
      child: Text(
        message.textContent ?? '',
        style: AppTextStyles.bodyMedium.copyWith(color: message.isOutgoing ? colors.textOnPrimary : colors.textPrimary),
      ),
    );
  }
}

// ── Image content ─────────────────────────────────────────────────────────────

class _ImageContent extends StatelessWidget {
  final Message message;
  final AppColorTheme colors;
  final String? mediaUrl;

  const _ImageContent({required this.message, required this.colors, required this.mediaUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: message.isOutgoing ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => MediaViewerDialog.show(context, url: mediaUrl!, isImage: true),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppDimens.radiusLg),
              topRight: Radius.circular(AppDimens.radiusLg),
            ),
            child: Image.network(
              mediaUrl!,
              width: AppDimens.mediaThumbnailSize,
              height: AppDimens.mediaThumbnailSize,
              fit: BoxFit.cover,
              loadingBuilder: (_, child, progress) => progress == null
                  ? child
                  : SizedBox(
                      width: AppDimens.mediaThumbnailSize,
                      height: AppDimens.mediaThumbnailSize,
                      child: Center(child: CircularProgressIndicator(color: colors.primary)),
                    ),
              errorBuilder: (_, __, ___) => _MediaIconPlaceholder(icon: Icons.broken_image_outlined, colors: colors),
            ),
          ),
        ),
        if (message.caption != null) _Caption(text: message.caption!, isOutgoing: message.isOutgoing, colors: colors),
      ],
    );
  }
}

// ── Video content ─────────────────────────────────────────────────────────────

class _VideoContent extends StatelessWidget {
  final Message message;
  final AppColorTheme colors;
  final String? mediaUrl;

  const _VideoContent({required this.message, required this.colors, required this.mediaUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: message.isOutgoing ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => MediaViewerDialog.show(context, url: mediaUrl!, isImage: false),
          child: SizedBox(
            width: AppDimens.mediaThumbnailSize,
            height: AppDimens.mediaThumbnailSize,
            child: _MediaIconPlaceholder(
              icon: Icons.play_circle_fill_rounded,
              iconSize: AppDimens.iconLg * 1.5,
              colors: colors,
            ),
          ),
        ),
        if (message.caption != null) _Caption(text: message.caption!, isOutgoing: message.isOutgoing, colors: colors),
      ],
    );
  }
}

// ── Document content ──────────────────────────────────────────────────────────

class _DocumentContent extends StatelessWidget {
  final Message message;
  final AppColorTheme colors;
  final String? mediaUrl;

  const _DocumentContent({required this.message, required this.colors, required this.mediaUrl});

  @override
  Widget build(BuildContext context) {
    final isOutgoing = message.isOutgoing;
    final textColor = isOutgoing ? colors.textOnPrimary : colors.textPrimary;

    return GestureDetector(
      onTap: () async {
        if (mediaUrl != null) {
          final uri = Uri.parse(mediaUrl!);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri, mode: LaunchMode.externalApplication);
          }
        }
      },
      child: SizedBox(
        width: AppDimens.mediaThumbnailSize,
        height: AppDimens.mediaThumbnailSize,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.insert_drive_file_outlined, color: textColor, size: AppDimens.iconLg),
            const SizedBox(height: AppDimens.spacingSm),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingSm),
              child: Text(
                message.caption ?? message.textContent ?? 'Document',
                style: AppTextStyles.bodySmall.copyWith(color: textColor, decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: AppDimens.spacingXs),
            Icon(Icons.download_outlined, color: textColor, size: AppDimens.iconSm),
          ],
        ),
      ),
    );
  }
}

// ── Shared helpers ────────────────────────────────────────────────────────────

class _MediaIconPlaceholder extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  final AppColorTheme colors;

  const _MediaIconPlaceholder({required this.icon, this.iconSize, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimens.mediaThumbnailSize,
      height: AppDimens.mediaThumbnailSize,
      decoration: BoxDecoration(
        color: colors.surfaceSoft,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppDimens.radiusLg),
          topRight: Radius.circular(AppDimens.radiusLg),
        ),
      ),
      child: Icon(icon, size: iconSize ?? AppDimens.iconLg, color: colors.textSecondary),
    );
  }
}

class _Caption extends StatelessWidget {
  final String text;
  final bool isOutgoing;
  final AppColorTheme colors;

  const _Caption({required this.text, required this.isOutgoing, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppDimens.spacingMd, AppDimens.spacingXs, AppDimens.spacingMd, 0),
      child: Text(
        text,
        style: AppTextStyles.bodySmall.copyWith(color: isOutgoing ? colors.textOnPrimary : colors.textPrimary),
      ),
    );
  }
}

class _BubbleTimestamp extends StatelessWidget {
  final Message message;
  final AppColorTheme colors;

  const _BubbleTimestamp({required this.message, required this.colors});

  @override
  Widget build(BuildContext context) {
    final h = message.messageTimestamp.hour.toString().padLeft(2, '0');
    final m = message.messageTimestamp.minute.toString().padLeft(2, '0');

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.spacingMd,
        AppDimens.spacingXs,
        AppDimens.spacingMd,
        AppDimens.spacingSm + 2,
      ),
      child: Text(
        '$h:$m',
        style: AppTextStyles.labelSmall.copyWith(
          fontSize: 10,
          color: message.isOutgoing ? colors.textOnPrimary.withValues(alpha: 0.7) : colors.textSecondary,
        ),
      ),
    );
  }
}
