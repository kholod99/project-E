import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poject22/models/conect.dart';
import 'package:poject22/models/home_video.dart';
import 'package:poject22/models/order.dart';
import 'package:poject22/models/our_services.dart';
import 'package:poject22/models/our_work.dart';

List<BottomNavigationBarItem> bottomNavBarItems = const [
  BottomNavigationBarItem(
    backgroundColor: Colors.transparent,
    icon: Icon(
      FontAwesomeIcons.house,
    ),
    label: "",
  ),
  BottomNavigationBarItem(
    backgroundColor: Colors.transparent,
    icon: Icon(
      FontAwesomeIcons.handHoldingDollar,
    ),
    label: "",
  ),
  BottomNavigationBarItem(
    backgroundColor: Colors.transparent,
    icon: Icon(
      FontAwesomeIcons.commentDollar,
    ),
    label: "",
  ),
  BottomNavigationBarItem(
    backgroundColor: Colors.transparent,
    icon: Icon(Icons.content_paste),
    label: "",
  ),
  BottomNavigationBarItem(
    backgroundColor: Colors.transparent,
    icon: Icon(
      FontAwesomeIcons.users,
    ),
    label: "",
  ),
  BottomNavigationBarItem(
    backgroundColor: Colors.transparent,
    icon: Icon(
      FontAwesomeIcons.message,
    ),
    label: "",
  ),
];
final List<Widget> pageScreens = [
  const HomeVideo(),
  const OurServices(),
  const Work(),
  const Order(),
  const ConectForm(),
  const ConectForm(),
];

List<Widget> items = [
  Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(33, 104, 129, 0.33),
      ),
      width: 150,
      height: 102,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/Group.png",
            width: 38,
          ),
          const SizedBox(width: 14),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Mobile Applications"),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const CustomDialog(
                        screen: "Mobile Applications",
                        message:
                            "application development teams believe indeveloping quality in an artistic way.",
                      ); // استدعاء واجهة النافذة الصغيرة المُعرفة سابقًا
                    },
                  );
                },
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }),
  Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(33, 104, 129, 0.33),
      ),
      width: 290,
      height: 102,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/🦆 icon _modernjoystick_.png",
            width: 50,
          ),
          const SizedBox(width: 14),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Game Development",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const CustomDialog(
                        screen: "Game Development",
                        message:
                            "Game development offers comprehensive solutions to help you design, develop andmarket your game from start to finish",
                      ); // استدعاء واجهة النافذة الصغيرة المُعرفة سابقًا
                    },
                  );
                },
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }),
  Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(33, 104, 129, 0.33),
      ),
      width: 290,
      height: 102,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/🦆 icon _light_.png",
            width: 45,
          ),
          const SizedBox(width: 14),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Software Development",
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const CustomDialog(
                        screen: "Software Development",
                        message:
                            "Software Development makes sure to deliver well-built and distinguished programs",
                      ); // استدعاء واجهة النافذة الصغيرة المُعرفة سابقًا
                    },
                  );
                },
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }),
  Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(33, 104, 129, 0.33),
      ),
      width: 290,
      height: 102,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/🦆 icon _world wide web www internet imac_.png",
            width: 45,
          ),
          const SizedBox(width: 14),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Business Solutions",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const CustomDialog(
                        screen: "Business Solutions",
                        message:
                            "Game development offers comprehensive solutions to help you design, develop andmarket your game from start to finish",
                      ); // استدعاء واجهة النافذة الصغيرة المُعرفة سابقًا
                    },
                  );
                },
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }),
  Builder(builder: (context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(33, 104, 129, 0.33),
      ),
      width: 290,
      height: 102,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/🦆 icon _world wide web www internet imac_.png",
            width: 45,
          ),
          const SizedBox(width: 14),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Web Development",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const CustomDialog(
                        screen: "Web Development",
                        message:
                            "offers appropriate business solutions for both big and smallbusinesses:",
                      ); // استدعاء واجهة النافذة الصغيرة المُعرفة سابقًا
                    },
                  );
                },
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ),
            ],
          )
        ],
      ),
    );
  })
];
List<String> img = [
  "assets/img/list (1).jpeg",
  "assets/img/list (2).jpeg",
  "assets/img/list (3).jpeg",
  "assets/img/list (4).jpeg",
];

class CustomDialog extends StatelessWidget {
  final String message;
  final String screen;

  const CustomDialog({super.key, required this.message, required this.screen});
  @override
  Widget build(
    BuildContext context,
  ) {
    return AlertDialog(
      title: Text(screen),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop(); // لإغلاق النافذة الصغيرة عند الضغط على الزر
          },
          child: const Text('close'),
        ),
      ],
    );
  }
}
