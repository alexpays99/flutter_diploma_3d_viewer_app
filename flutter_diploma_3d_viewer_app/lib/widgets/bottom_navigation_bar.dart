import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_diploma_3d_viewer_app/screens/favourite_screen.dart';
import 'package:flutter_diploma_3d_viewer_app/screens/home_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  //index of page
  int currentIndex = 0;

  // list of screens
  final screens = [
    const HomePage(),
    const FavouriteScreen(),
    // const Center(child: Text('Favourite')),
    const Center(child: Text('Favourite')),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: const Color.fromARGB(184, 193, 236, 237),
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            textAlign: TextAlign.center,
            activeColor: const Color.fromARGB(255, 3, 100, 228),
            inactiveColor: Theme.of(context).backgroundColor,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.favorite),
            title: const Text('Favourite'),
            textAlign: TextAlign.center,
            activeColor: const Color.fromARGB(255, 3, 100, 228),
            inactiveColor: Theme.of(context).backgroundColor,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.money),
            title: const Text('Favourite'),
            textAlign: TextAlign.center,
            activeColor: const Color.fromARGB(255, 3, 100, 228),
            inactiveColor: Theme.of(context).backgroundColor,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person_outline),
            title: const Text('Profile'),
            textAlign: TextAlign.center,
            activeColor: const Color.fromARGB(255, 3, 100, 228),
            inactiveColor: Theme.of(context).backgroundColor,
          ),
        ],
      ),
    );
  }
}
