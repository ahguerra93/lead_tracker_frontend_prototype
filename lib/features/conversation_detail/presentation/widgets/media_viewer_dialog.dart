import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';

/// Opens the appropriate full-screen viewer for a media asset.
///
/// Accepts a pre-resolved [url] and an [isImage] flag so the dialog has no
/// dependency on the [Message] entity or URL-building logic.
class MediaViewerDialog extends StatelessWidget {
  final String url;
  final bool isImage;

  const MediaViewerDialog({super.key, required this.url, required this.isImage});

  static Future<void> show(BuildContext context, {required String url, required bool isImage}) {
    return showDialog<void>(
      context: context,
      builder: (_) => MediaViewerDialog(url: url, isImage: isImage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          title: Text(isImage ? 'Image' : 'Video', style: AppTextStyles.titleMedium.copyWith(color: Colors.white)),
        ),
        body: SafeArea(
          child: isImage ? _ImageViewer(url: url) : _VideoViewer(url: url),
        ),
      ),
    );
  }
}

// ── Image viewer ──────────────────────────────────────────────────────────────

class _ImageViewer extends StatelessWidget {
  final String url;

  const _ImageViewer({required this.url});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 0.5,
      maxScale: 4.0,
      child: Center(
        child: Image.network(
          url,
          fit: BoxFit.contain,
          loadingBuilder: (_, child, progress) =>
              progress == null ? child : const Center(child: CircularProgressIndicator(color: Colors.white)),
          errorBuilder: (_, __, ___) => const _MediaErrorPlaceholder(),
        ),
      ),
    );
  }
}

// ── Video viewer ──────────────────────────────────────────────────────────────

class _VideoViewer extends StatefulWidget {
  final String url;

  const _VideoViewer({required this.url});

  @override
  State<_VideoViewer> createState() => _VideoViewerState();
}

class _VideoViewerState extends State<_VideoViewer> {
  late final VideoPlayerController _controller;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url))
      ..initialize().then((_) {
        if (mounted) setState(() => _initialized = true);
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      return const Center(child: CircularProgressIndicator(color: Colors.white));
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: AspectRatio(aspectRatio: _controller.value.aspectRatio, child: VideoPlayer(_controller)),
        ),
        const SizedBox(height: AppDimens.spacingMd),
        _VideoProgressBar(controller: _controller),
        const SizedBox(height: AppDimens.spacingSm),
        _VideoControls(controller: _controller),
      ],
    );
  }
}

class _VideoProgressBar extends StatelessWidget {
  final VideoPlayerController controller;

  const _VideoProgressBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingMd),
      child: VideoProgressIndicator(
        controller,
        allowScrubbing: true,
        colors: const VideoProgressColors(
          playedColor: Colors.white,
          bufferedColor: Colors.white38,
          backgroundColor: Colors.white12,
        ),
      ),
    );
  }
}

class _VideoControls extends StatefulWidget {
  final VideoPlayerController controller;

  const _VideoControls({required this.controller});

  @override
  State<_VideoControls> createState() => _VideoControlsState();
}

class _VideoControlsState extends State<_VideoControls> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onControllerUpdate);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerUpdate);
    super.dispose();
  }

  void _onControllerUpdate() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isPlaying = widget.controller.value.isPlaying;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 48,
          color: Colors.white,
          icon: Icon(isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled),
          onPressed: () {
            isPlaying ? widget.controller.pause() : widget.controller.play();
          },
        ),
      ],
    );
  }
}

// ── Shared error state ────────────────────────────────────────────────────────

class _MediaErrorPlaceholder extends StatelessWidget {
  const _MediaErrorPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.broken_image_outlined, size: 64, color: Colors.white38),
        const SizedBox(height: AppDimens.spacingSm),
        Text('Could not load media', style: AppTextStyles.bodySmall.copyWith(color: Colors.white54)),
      ],
    );
  }
}
