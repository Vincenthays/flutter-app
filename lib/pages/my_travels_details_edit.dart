import 'package:flutter/material.dart';

class MyTravelsDetailsEdit extends StatelessWidget {
  final int _travelId;

  MyTravelsDetailsEdit(this._travelId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon trajet $_travelId'),
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