// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key, required this.videoUrl});
  final String videoUrl;
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoController;
  late Future<void> _initializeVideoPlayer;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(widget.videoUrl);

    _initializeVideoPlayer = _videoController.initialize().then((_) {
      setState(() {
        _videoController.setLooping(true);
        _videoController.play();
      });
    });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayer,
      builder: (context, snapshot) {
        return Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: VideoPlayer(_videoController),
            ),
            Positioned(
              child: IconButton(
                onPressed: () {
                  _videoController.value.isPlaying
                      ? _videoController.pause()
                      : _videoController.play();
                },
                icon: Icon(
                  _videoController.value.isPlaying
                      ? Icons.pause_circle_outline
                      : Icons.play_arrow_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
