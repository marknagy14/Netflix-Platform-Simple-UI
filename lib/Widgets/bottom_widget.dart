import 'package:flutter/material.dart';
import 'package:session_eigh/screens/home_screen.dart';
import '../screens/search_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int value = 0;
  List screens = [HomeScreen(), SearchScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Netflix"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: screens[value],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
        currentIndex: value,
        onTap: (index) {
          setState(() {
            value = index;
          });
        }, //current index :0 to start with home
      ),
    );
  }
}
