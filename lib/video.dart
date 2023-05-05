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
      'image': 'images/python.png',
      'language': 'Python',
      'asset': 'videos/Python_crash_course.mp4'
    },
    {
      'image': 'images/c.png',
      'language': 'C',
      'asset': 'videos/C_crash_course.mp4'
    },
    {
      'image': 'images/cpp.png',
      'language': 'C++',
      'asset': 'videos/Cplusplus_Crash_course.mp4'
    },
    {
      'image': 'images/css.png',
      'language': 'CSS',
      'asset': 'videos/CSS_crash_course.mp4'
    },
    {
      'image': 'images/javascript.png',
      'language': 'JavaScript',
      'asset': 'videos/Javascript_crash_course.mp4'
    },
    {
      'image': 'images/java.png',
      'language': 'Java',
      'asset': 'videos/Java_crash_course.mp4'
    },
    {
      'image': 'images/vue.png',
      'language': 'Vue',
      'asset': 'videos/Vue_crash_course.mp4'
    },
    {
      'image': 'images/flutter.png',
      'language': 'Flutter',
      'asset': 'videos/Flutter_crash_course.mp4'
    },
    {
      'image': 'images/html.png',
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
                    Text('<Name>', style: TextStyle(color: Colors.white))
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
                          image: 'images/vue.png',
                          language: 'Vue',
                          buttonText: 'Watch Video',
                          asset: 'videos/Vue_crash_course.mp4',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Video(
                          image: 'images/cpp.png',
                          language: 'C++',
                          buttonText: 'Watch Video',
                          asset: 'videos/Cplusplus_Crash_course.mp4',
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
