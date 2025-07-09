// 📛 Profile Name: video_validator_preview.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoValidatorPreview extends StatefulWidget {
  final String videoUrl;
  const VideoValidatorPreview({super.key, required this.videoUrl});

  @override
  State<VideoValidatorPreview> createState() => _VideoValidatorPreviewState();
}

class _VideoValidatorPreviewState extends State<VideoValidatorPreview> {
  late VideoPlayerController _controller;
  bool isValid = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        final duration = _controller.value.duration.inSeconds;
        if (duration <= 15) {
          setState(() => isValid = true);
        }
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎬 Validate & Preview')),
      body: Center(
        child: _controller.value.isInitialized
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    isValid ? '✅ Duration OK (≤ 15s)' : '❌ Too Long! Cut it down.',
                    style: TextStyle(color: isValid ? Colors.green : Colors.red, fontSize: 16),
                  ),
                  ElevatedButton(
                    onPressed: () => _controller.play(),
                    child: const Text('▶ Preview'),
                  )
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
