import 'package:flutter/material.dart';

class MyTravelsAdd extends StatefulWidget {
  @override
  State createState() => _MyTravelsAddState();
}

class _MyTravelsAddState extends State<MyTravelsAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () => Navigator.pop(context),
          ),
        ]
      ),
      body: Center(
        child: Text('Add', style: TextStyle(fontSize: 40.0),),
      ),
    );
  }
}