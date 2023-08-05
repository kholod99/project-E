import 'package:flutter/material.dart';
import 'package:poject22/models/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // يمكنك إضافة العمليات الإضافية الخاصة بك هنا بناءً على العنصر المحدد
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Color(0xFF2BBFB0)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: pageScreens[_currentIndex],
        bottomNavigationBar: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white38,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            iconSize: 25,
            elevation: 0,
            fixedColor: const Color(0xFF333E50),
            unselectedItemColor: Colors.black,
            selectedFontSize: 16,
            items: bottomNavBarItems,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
