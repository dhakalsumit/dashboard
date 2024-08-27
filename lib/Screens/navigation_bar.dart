import 'package:flutter/material.dart';

class BNavigationBar extends StatefulWidget {
  const BNavigationBar({super.key});

  @override
  State<BNavigationBar> createState() => _BNavigationBarState();
}

class _BNavigationBarState extends State<BNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      ]),
    );
  }
}
