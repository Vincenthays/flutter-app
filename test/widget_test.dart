import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellowAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Salut!',
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}