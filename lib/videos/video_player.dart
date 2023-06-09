import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String asset;
  final String title;
  final String url;
  const VideoPlayerScreen(
      {super.key, required this.asset, required this.title, required this.url});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  late String videoId = YoutubePlayer.convertUrlToId(widget.url).toString();

  late YoutubePlayerController _youtubeController;

  late Future<void> _initializeVideoPlayerFuture;

  final Color backgroundColor = const Color.fromARGB(255, 108, 99, 255);
  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset(widget.asset);

    _youtubeController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: YoutubePlayerFlags(
          mute: false,
          autoPlay: false,
        ));

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: backgroundColor,
      ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: ytPlayer(),
      // body: FutureBuilder(
      //   future: _initializeVideoPlayerFuture,
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       // If the VideoPlayerController has finished initialization, use
      //       // the data it provides to limit the aspect ratio of the video.
      //       return AspectRatio(
      //         aspectRatio: _controller.value.aspectRatio,
      //         // Use the VideoPlayer widget to display the video.
      //         child: Container(
      //             decoration: BoxDecoration(color: backgroundColor),
      //             child: VideoPlayer(_controller)),
      //       );
      //     } else {
      //       // If the VideoPlayerController is still initializing, show a
      //       // loading spinner.
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: backgroundColor,
      //   onPressed: () {
      //     // Wrap the play or pause in a call to `setState`. This ensures the
      //     // correct icon is shown.
      //     setState(() {
      //       // If the video is playing, pause it.
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         // If the video is paused, play it.
      //         _controller.play();
      //       }
      //     });
      //   },
      //   // Display the correct icon depending on the state of the player.
      //   child: Icon(
      //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ),
    );
  }

  Widget ytPlayer() {
    return YoutubePlayer(
      controller: _youtubeController,
      showVideoProgressIndicator: true,
    );
  }
}
