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
      body: Stepper(
        steps: [
          Step(
              title: Text(_travel.from),
              subtitle: Text('8h'),
              content: Text('Vous pouvez aider 2 personnes'),
          ),
          Step(
              title: Text(_travel.to),
              subtitle: Text('9h'),
              content: Text('Test'),
          ),
        ],
      )
    );
  }
}
