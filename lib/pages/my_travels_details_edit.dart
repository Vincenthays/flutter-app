import 'package:flutter/material.dart';

import '../objects/Travel.dart';

class MyTravelsDetailsEdit extends StatelessWidget {
  final Travel _travel;

  MyTravelsDetailsEdit(this._travel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_travel.name),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () => Navigator.pop(context),
          ),
        ]
      ),
      body: Center(
        child: Text('Modifier', style: TextStyle(fontSize: 40.0),),
      )
    );
  }
}