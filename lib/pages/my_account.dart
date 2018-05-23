import 'package:flutter/material.dart';

import './settings.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Compte'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Settings())),
          ),
        ]
      ),
      body: Center(
        child: Text('Mon compte', style: TextStyle(fontSize: 40.0),),
      )
    );
  }
}