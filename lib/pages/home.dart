import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() => HomeState();
}

class HomeState extends State<Home> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Laure Nicolas $_counter', style: TextStyle(fontSize: 40.0),),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blueAccent,
          onPressed: () => setState(() => _counter++)
        ),
      ),
    );
  }
}