import 'package:flutter/material.dart';

import './my_travels.dart';
import './test.dart';
import './my_account.dart';

class TabNavigation extends StatefulWidget {
  @override
  State createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  int _currentIndex = 0;

  List<Widget> _screens = <Widget>[
    MyTravels(),
    Test(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int idx) => setState(() => _currentIndex = idx),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            title: Text('Mes trajets'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Test'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Mon compte'),
          ),
        ],
      ),
    );
  }
}