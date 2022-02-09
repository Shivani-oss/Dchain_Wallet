import 'package:flutter/material.dart';
import 'package:wallet_dchain/ui/contact_page.dart';
import 'package:wallet_dchain/ui/double_check.dart';
import 'package:wallet_dchain/ui/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  
  int _currentIndex = 0;

  // final tabs = ['Home', 'Contacts'];

  final List<Widget>tabs = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_align_justify),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            title: Text('Accounts'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_split_outlined),
            title: Text('Send'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_received),
            title: Text('Recieve'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('Contacts'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

//  IconButton(
//                 icon: Icon(Icons.settings_outlined),
//                 onPressed: () {
                  
//                 },
//               ),