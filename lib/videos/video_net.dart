import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoNet extends StatefulWidget {

  @override
  // ignore: library_private_types_in_public_api
  _VideoNetState createState() => _VideoNetState();
}

class _VideoNetState extends State<VideoNet> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network('https://media.allstar.gg/642c678ed500193b38d0fd5c/clips/6442c9378ffc3a0008a1a885.mp4?source=iframe_unknown');
    _controller = VideoPlayerController.network('https://cdn.kastatic.org/ka-youtube-converted/FCMxA3m_Imc.mp4/FCMxA3m_Imc.mp4#t=0');
    _initializeVideoPlayerFuture = _controller?.initialize();
    _controller?.setLooping(true);
    _controller?.setVolume(0.5);
    super.initState();
  }

  @override
  void dispose(){
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 108, 99, 255),
        title: const Text('Video from internet'),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller!.value.aspectRatio,
              child: VideoPlayer(_controller!),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller!.value.isPlaying){
              _controller?.pause();
            } else {
              _controller?.play();
            }
          });
        },
        child: Icon(_controller!.value.isPlaying ? Icons.pause : Icons.play_arrow)
      ),
    );
  }
}
