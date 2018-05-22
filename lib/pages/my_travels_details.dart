import 'package:flutter/material.dart';

class MyTravelsDetails extends StatelessWidget {
  final int _travelId;

  MyTravelsDetails(this._travelId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon trajet $_travelId'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mode_edit),
            onPressed: () => print('Edit'),
          ),
        ]
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('De point A', style: TextStyle(fontSize: 40.0), textAlign: TextAlign.center,),
            Icon(Icons.arrow_downward, size: 40.0,),
            Text('à point B', style: TextStyle(fontSize: 40.0), textAlign: TextAlign.center,),
            Container(
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