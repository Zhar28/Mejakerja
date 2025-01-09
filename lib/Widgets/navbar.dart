import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mejakerja/Pages/HomePages/homepage.dart';
import 'package:mejakerja/Pages/ProfilePages/profilepage.dart';
import 'package:mejakerja/Pages/notificationpage.dart';
import 'package:mejakerja/Pages/postpage.dart';
import 'package:mejakerja/Pages/searchpage.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _Navbar createState() => _Navbar
  ();
}

class _Navbar extends State<Navbar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Homepage(),
    Searchpage(),
    Postpage(),
    Notificationpage(),
    Profilepage()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}