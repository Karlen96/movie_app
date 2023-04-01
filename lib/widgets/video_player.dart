import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../entities/video_entity/video_entity.dart';

class VideoPlayerWidget extends StatefulWidget {
  final VideoEntity video;

  const VideoPlayerWidget({
    super.key,
    required this.video,
  });

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.video.key,
      flags: const YoutubePlayerFlags(
        mute: true,
          useHybridComposition: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onReady(){
    _controller.unMute();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_controller.value.isFullScreen) {
          _controller.toggleFullScreenMode();
          await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
          return false;
        }
        return true;
      },
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
          onReady: onReady,
      ),
    );
  }
}
