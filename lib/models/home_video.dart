import 'package:flutter/material.dart';
import 'package:poject22/models/video.dart';

class HomeVideo extends StatelessWidget {
  const HomeVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/img/wheel.png",
                height: 22,
              ),
              Image.asset(
                "assets/img/image 1.png",
                height: 50,
                width: 150,
              ),
            ],
          ),
        ),
        const Text(
          "Home",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Container(
          height: 250,
          width: 360,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: const VideoPlayerWidget(videoUrl: "assets/img/video.mp4"),
        ),
        const SizedBox(height: 16),
        const Text(
          "Our Programming Language",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/img/ccc.jpeg",
                width: 80,
                height: 80,
              ),
              Image.asset(
                "assets/img/java.jpeg",
                width: 80,
                height: 80,
              ),
              Image.asset(
                "assets/img/python.jpeg",
                width: 80,
                height: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
