import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:poject22/models/list.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Image.asset("assets/img/wheel.png", height: 24),
            )),
        const SizedBox(height: 50),
        const Text(
          "Our work",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 200),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          height: 110,
          width: double.infinity,
          child: ListView.builder(
            itemCount: img.length,
            itemBuilder: (context, index) {
              //  for (int i = 0; i <= img.length - 1; i++)
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ListImg(
                  imgUrl: img[index],
                ),
              );
              // ignore: dead_code
              setState(() {
                currentPage = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(height: 30),
        DotsIndicator(
          dotsCount: img.length,
          position: currentPage,
          decorator: DotsDecorator(
            activeColor: Colors.blue,
            size: const Size(10, 10),
            activeSize: const Size(20, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}

class ListImg extends StatelessWidget {
  const ListImg({super.key, required this.imgUrl});
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
