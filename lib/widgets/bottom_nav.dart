import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 28,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business_center,size: 28,),
          label: 'Portfolio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.input,size: 28,),
          label: 'Input',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,size: 28,),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
    );
  }
}
