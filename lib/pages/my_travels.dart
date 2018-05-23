import 'package:flutter/material.dart';

import './my_travels_add.dart';
import './my_travels_details.dart';

class MyTravels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes trajets'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyTravelsAdd())),
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
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyTravelsDetails(i))),
          )
        ),
      )
    );
  }
}