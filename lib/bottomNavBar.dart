import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBarApp extends StatefulWidget {
  const NavigationBarApp({super.key});

  @override
  State<NavigationBarApp> createState() => _NavigationBarAppState();
}

class _NavigationBarAppState extends State<NavigationBarApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(

        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.redAccent,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: SvgPicture.asset(
              'assets/icons/house-solid-full.svg',
              width: 30,
              height: 30,
            ),
            icon: SvgPicture.asset(
              'assets/icons/house-solid-full.svg',
              width: 30,
              height: 30,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(
              'assets/icons/fire-flame-curved-solid-full.svg',
              width: 30,
              height: 30,
            ),
            icon: SvgPicture.asset(
              'assets/icons/fire-flame-curved-solid-full.svg',
              width: 30,
              height: 30,
            ),
            label: 'Discover',
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(
              'assets/icons/comment-solid-full.svg',
              width: 30,
              height: 30,
            ),
            icon: SvgPicture.asset(
              'assets/icons/comment-solid-full.svg',
              width: 30,
              height: 30,
            ),
            label: 'Messages',
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(
              'assets/icons/user-solid-full.svg',
              width: 30,
              height: 30,
            ),
            icon: SvgPicture.asset(
              'assets/icons/user-solid-full.svg',
              width: 30,
              height: 30,
            ),
            label: 'User',
          ),

        ],
      ),
      //HomeScreenPage()
      // home page ---> main home
        // discover page --> discover main page
        // messages ---> main messages page
        // profile ---> main profile page
    );
  }
}