import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:video_player/video_player.dart';

class FastLaughVideoPlayer extends StatefulWidget {
  const FastLaughVideoPlayer(
      {super.key, required this.videoUrl, required this.onStateChanged});

  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });
    super.initState();
  }


 @override
  void dispose() {
     _videoPlayerController.dispose();
    super.dispose();
   
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                )
          : Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
    );
  }
}
