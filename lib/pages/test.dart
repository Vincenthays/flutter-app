import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State createState() => _TestState();
}

class _TestState extends State<Test> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Laure Nicolas $_counter', style: TextStyle(fontSize: 40.0),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState(() => _counter++)
      ),
    );
  }
}