import 'package:flutter/material.dart';

import './my_travels_details.dart';

class MyTravels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Mes trajets'),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.add),
            onPressed: () => print('Add'),
          ),
        ]
      ),
      body: ListView(
        children: List<Widget>.generate(
          20, 
          (i) => ListTile(
            leading: Icon(Icons.outlined_flag), 
            title: Text('Trajet $i'), 
            subtitle: Text('Détail du trajet $i'),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new MyTravelsDetails(i))),
          )
        ),
      )
    );
  }
}