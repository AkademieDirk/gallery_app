import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: _currentIndex,
      //   children: [
      //     HomeScreen(),
      //     DetailScreen(),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view), label: "Homescreen"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "rechts"),
          ]),
    );
  }
}
