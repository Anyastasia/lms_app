import 'package:flutter/material.dart';
import './videos/video.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final double spacing = 8;
  final courses = [
    {
      'image': 'python.png',
      'language': 'Python',
      'asset': 'Python_crash_course.mp4'
    },
    {
      'image': 'c.png',
      'language': 'C',
      'asset': 'C_crash_course.mp4'
    },
    {
      'image': 'cpp.png',
      'language': 'C++',
      'asset': 'Cplusplus_Crash_course.mp4'
    },
    {
      'image': 'css.png',
      'language': 'CSS',
      'asset': 'videos/CSS_crash_course.mp4'
    },
    {
      'image': 'javascript.png',
      'language': 'JavaScript',
      'asset': 'videos/Javascript_crash_course.mp4'
    },
    {
      'image': 'java.png',
      'language': 'Java',
      'asset': 'videos/Java_crash_course.mp4'
    },
    {
      'image': 'vue.png',
      'language': 'Vue',
      'asset': 'videos/Vue_crash_course.mp4'
    },
    {
      'image': 'flutter.png',
      'language': 'Flutter',
      'asset': 'videos/Flutter_crash_course.mp4'
    },
    {
      'image': 'html.png',
      'language': 'HTML',
      'asset': 'videos/HTML_crash_course.mp4'
    },
  ];
  final takenCourses = {"C++", "Python", "Flutter"};
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: const Color.fromARGB(255, 108, 99, 255),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Color(0xFFFFFFFF)))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(children: const [
                    Text('Welcome! ',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    // Text('<Name>', style: TextStyle(color: Colors.white))
                  ]),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Watch Video tutorials',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Video(
                          image: 'assets/images/vue.png',
                          language: 'Vue',
                          buttonText: 'Watch Video',
                          asset: 'videos/Vue_crash_course.mp4',
                          url: 'https://youtu.be/bzlFvd0b65c',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Video(
                          image: 'assets/images/cpp.png',
                          language: 'C++',
                          buttonText: 'Watch Video',
                          asset: 'videos/Cplusplus_Crash_course.mp4',
                          url: 'https://youtu.be/ZzaPdXTrSb8',
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
