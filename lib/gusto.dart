import 'package:flutter/material.dart';
import 'package:gusto/view/explore_screen.dart';
import 'package:gusto/view/home_screen.dart';
import 'package:gusto/view/location_screen.dart';
import 'package:gusto/view/profile_screen.dart';

class Gusto extends StatefulWidget {
  const Gusto({super.key});

  @override
  State<Gusto> createState() => _GustoState();
}

class _GustoState extends State<Gusto> {
  int screenIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    Container(),
    const GustoGuideScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screens[screenIndex],
          Positioned(
            bottom: 15,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      screenIndex = 0;
                      setState(() {});
                    },
                    child: Icon(
                      (screenIndex == 0) ? Icons.home : Icons.home_outlined,
                      size: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      screenIndex = 1;
                      setState(() {});
                    },
                    child: Icon(
                      (screenIndex == 1)
                          ? Icons.explore
                          : Icons.explore_outlined,
                      size: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      screenIndex = 2;
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      size: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      screenIndex = 3;
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.share_location_rounded,
                      size: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      screenIndex = 4;
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.person_4_outlined,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
