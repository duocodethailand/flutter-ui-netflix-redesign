import 'package:flutter/material.dart';
import 'package:netflix_clone_ui_redesign/views/nav_bar.dart';

void main() {
  runApp(const NetFlixRedesign());
}

class NetFlixRedesign extends StatelessWidget {
  const NetFlixRedesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const NavBar(),
    );
  }
}
