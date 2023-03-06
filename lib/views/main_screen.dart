import 'package:expedia_clone/views/my_account.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';
import 'my_trips.dart';

class ExpediaMainScreen extends StatefulWidget {
  const ExpediaMainScreen({Key? key}) : super(key: key);

  @override
  State<ExpediaMainScreen> createState() => _ExpediaMainScreenState();
}

class _ExpediaMainScreenState extends State<ExpediaMainScreen> {
  int selectedIndex = 0;

  final List _screens = [
    {
      'name': 'Home',
      'icon': Icons.home_outlined,
      'selectedIcon': Icons.home_filled,
      'view': const HomeView(),
    },
    {
      'name': 'My Trips',
      'icon': Icons.directions_outlined,
      'selectedIcon': Icons.directions,
      'view': const MyTrips(),
    },
    {
      'name': 'My Account',
      'icon':  Icons.account_circle_outlined,
      'selectedIcon': Icons.account_circle,
      'view': const MyAccount()
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex]['view'],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        currentIndex: selectedIndex,
        items: _screens
            .map(
              (screen) => BottomNavigationBarItem(
                icon: Icon(screen['icon']),
                activeIcon: Icon(screen['selectedIcon']),
                label: screen['name'],
              ),
            )
            .toList(),
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
