import 'package:flutter/material.dart';
import 'package:netflix_clone_ui_redesign/views/home_view.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> _screens = [
    const HomeView(),
    const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Comming Soon',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Download',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Setting',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ];

  final Map<String, IconData> _icons = const {
    'Home': Icons.home_rounded,
    'Search': Icons.search,
    'Conming Soon': Icons.play_circle_outline_sharp,
    'Download': Icons.file_download_outlined,
    'Setting': Icons.settings,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(170, 20, 20, 20),
          items: _icons
              .map(
                (label, icon) => MapEntry(
                  label,
                  BottomNavigationBarItem(
                    icon: Icon(icon, size: 33),
                    label: label,
                  ),
                ),
              )
              .values
              .toList(),
          currentIndex: _currentIndex,
          selectedItemColor: Colors.red,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          unselectedItemColor: Colors.white,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
      body: _screens[_currentIndex],
    );
  }
}
