import 'package:flutter/material.dart';
import 'package:sriyog/Screens/chart%20screens/city_chart.dart';
import 'package:sriyog/Screens/next_page.dart';
import 'package:sriyog/Screens/stats.dart';
import 'package:sriyog/Screens/unverified.dart';
import 'package:sriyog/Screens/user_profile.dart';

class BNavigationBar extends StatefulWidget {
  const BNavigationBar({super.key});

  @override
  State<BNavigationBar> createState() => _BNavigationBarState();
}

class _BNavigationBarState extends State<BNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const Stats(),
          const CityChart(),
          const Unverified(),
          UserProfile(),
          const NextPage(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/home.png"),
                size: 35,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/phone.png"),
                size: 35,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/whatsapp.png"),
                size: 35,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/email.png"),
                size: 35,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/checkmark.png"),
                size: 35,
                color: Colors.black,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
