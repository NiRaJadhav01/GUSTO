import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
    HomeScreen(),
    ExploreScreen(),
    Container(),
    GustoGuideScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screenIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(8),
        height: 80,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(30)),
        child: GNav(
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          tabActiveBorder:
              Border.all(color: Colors.black, width: 1), // tab button border
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 50), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.white, // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 22, // tab button icon size
          tabBackgroundColor: Colors.black, // selected tab background color
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 5), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              onPressed: () {
                screenIndex = 0;
                setState(() {});
              },
            ),
            GButton(
              icon: Icons.explore,
              text: 'Explore',
              onPressed: () {
                screenIndex = 1;
                setState(() {});
              },
            ),
            GButton(
              icon: Icons.add,
              text: 'Post',
              onPressed: () {
                screenIndex = 2;
                setState(() {});
              },
            ),
            GButton(
              icon: Icons.share_location_rounded,
              text: 'Hotels',
              onPressed: () {
                screenIndex = 3;
                setState(() {});
              },
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
              onPressed: () {
                screenIndex = 4;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
