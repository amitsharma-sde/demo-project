import 'package:flutter/material.dart';

import 'package:demo_project/constants.dart';
import 'package:demo_project/home_screen.dart';
import 'package:demo_project/demo_screen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const DemoScreen(),
    const DemoScreen(),
    const DemoScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: white,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: const Color(0xFF919396),
        selectedFontSize: 1,
        unselectedFontSize: 1,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 32),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded, size: 28),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 32),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, size: 32),
            label: ' ',
          ),
        ],
      ),
    );
  }
}
