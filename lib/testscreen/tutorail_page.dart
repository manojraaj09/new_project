import 'package:flutter/material.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

class VideoTutorial extends StatefulWidget {
  const VideoTutorial({Key? key}) : super(key: key);

  @override
  State<VideoTutorial> createState() => _VideoTutorialState();
}

class _VideoTutorialState extends State<VideoTutorial> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://www.youtube.com/watch?v=AsOhmaBEwig',
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Tutorial Video',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFF4385f5),
        automaticallyImplyLeading: true,

      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ), // This
    );
  }
}
