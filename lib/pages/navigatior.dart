import 'package:flutter/material.dart';

import './home.dart';
import './my_travels.dart';
import './settings.dart';
import './about.dart';

class Navigatior extends StatefulWidget {
  @override
  State createState() => NavigatiorState();
}

class NavigatiorState extends State<Navigatior> {
  int _currentIndex = 0;

  List<Widget> _screens = <Widget>[
    MyTravels(),
    Settings(),
    About()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title: Text('Mes trajets'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Paramètres'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('A propos'),
          ),
        ],
        onTap: (int idx) => setState(() => _currentIndex = idx),
      ),
    );
  }
}