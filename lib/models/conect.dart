import 'package:flutter/material.dart';

class ConectForm extends StatelessWidget {
  const ConectForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30),
                child: Image.asset("assets/img/wheel.png", height: 24),
              )),
          const Text(
            "Contact us",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Container(
            alignment: Alignment.center,
            width: 320,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(200),
                topLeft: Radius.circular(200),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromRGBO(51, 62, 80, 0),
                    Color.fromRGBO(51, 62, 80, 0.1)
                  ]),
            ),
            child: const Text(
              "Contact Form",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 370,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(51, 62, 80, 0),
                    Color.fromRGBO(51, 62, 80, 1)
                  ]),
              //   color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  width: 280,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white54,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "name",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black38),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  width: 280,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white54,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "email",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black38),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white54,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "subject",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black38),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  width: 280,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white54,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "message",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black38),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                        child: Text(
                          'Send',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black38),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            height: 70,
            width: 360,
            child: Image.asset("assets/img/maps.jpeg"),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(51, 62, 80, 0.22),
                  Color.fromRGBO(51, 62, 80, 0.49)
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/img/whatsapp_.png",
                  width: 40,
                ),
                Image.asset(
                  "assets/img/instagram round_.png",
                  width: 40,
                ),
                Image.asset(
                  "assets/img/facebook round_.png",
                  width: 40,
                ),
                Image.asset(
                  "assets/img/twitter round_.png",
                  width: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
