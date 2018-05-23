import 'package:flutter/material.dart';

import './my_travels_add.dart';
import './my_travels_details.dart';

import '../objects/Travel.dart';

class MyTravels extends StatefulWidget {
  @override
  State createState() => _MyTravelsState();
}

class _MyTravelsState extends State<MyTravels> {

  List<Travel> travels;

  void initState() {
    super.initState();
    travels = List<Travel>.generate(
      10, (i) => Travel('Trajet $i', 'Point A', 'Point B')
    );
  }

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
        children: travels.map((travel) => ListTile(
          leading: Icon(Icons.outlined_flag), 
          title: Text(travel.name), 
          subtitle: Text('${travel.from} to ${travel.to}'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyTravelsDetails(travel))),
        )).toList()
      )
    );
  }
}