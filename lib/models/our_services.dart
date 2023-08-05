// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:poject22/models/list.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Image.asset("assets/img/wheel.png", height: 24),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Our Services",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.white, Color(0xFF2BBFB0)],
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.7,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 80),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: items[index],
              );
            },
          ),
        )
      ],
    );
  }
}
