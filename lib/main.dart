import 'package:flutter/material.dart';
import './pages/tab_navigation.dart';

void main() => runApp(
  MaterialApp(
    title: 'Test',
    debugShowCheckedModeBanner: false,
    home: TabNavigation(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],
    ),
  )
);