import 'package:flutter/material.dart';

import './my_travels_details_edit.dart';

import '../objects/Travel.dart';

class MyTravelsDetails extends StatelessWidget {
  final Travel _travel;

  MyTravelsDetails(this._travel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_travel.name),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mode_edit),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyTravelsDetailsEdit(_travel))),
          ),
        ]
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_travel.from, style: TextStyle(fontSize: 40.0), textAlign: TextAlign.center,),
            Icon(Icons.arrow_downward, size: 40.0,),
            Text(_travel.to, style: TextStyle(fontSize: 40.0), textAlign: TextAlign.center,),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Heure de départ')
                ],
              ),
            )
          ],
        )
      )
    );
  }
}