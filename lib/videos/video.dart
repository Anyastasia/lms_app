import 'package:flutter/material.dart';
import '../videos/video_player.dart';

class Video extends StatelessWidget {
  final String image;
  final String language;
  final String buttonText;
  final String asset;
  final String url;
  const Video(
      {super.key,
      required this.image,
      required this.language,
      required this.buttonText,
      required this.asset,
      required this.url});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        textStyle: const TextStyle(color: Color.fromARGB(255, 108, 99, 255)),
        backgroundColor: const Color.fromRGBO(255, 253, 253, 1.0));

    return LayoutBuilder(
      builder: (builder, context) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: const Color.fromARGB(53, 255, 255, 255)),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(children: [
                Column(children: [
                  Image.asset(
                    image,
                    width: 50,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(language))
                ]),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: ElevatedButton(
                        style: buttonStyle,
                        onPressed: () {
                          Navigator.push(
                              builder,
                              MaterialPageRoute(
                                  builder: (context) => VideoPlayerScreen(
                                      asset: asset,
                                      title: language,
                                      url: url
                                  )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            buttonText,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 108, 99, 255)),
                          ),
                        )),
                  ),
                )
              ])),
        );
      },
    );
  }
}
