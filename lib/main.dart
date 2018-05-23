import 'package:flutter/material.dart';

import './pages/navigatior.dart';

void main() => runApp(
  MaterialApp(
    title: 'Test',
    debugShowCheckedModeBanner: false,
    home: Navigatior(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],
    ),
  )
);