import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/TravelModel.dart';

import './my_travels_add.dart';
import './my_travels_details.dart';

class MyTravels extends StatefulWidget {
  @override
  State createState() => _MyTravelsState();
}

class _MyTravelsState extends State<MyTravels> {

  void _onDismissedHandler(DismissDirection direction, DocumentSnapshot travel) {
    if (direction == DismissDirection.endToStart) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("${travel['name']} modifié"), 
        backgroundColor: Colors.green,
      ));
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("${travel['name']} supprimé"), 
        backgroundColor: Colors.red,
      ));
    }
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot travel) {
    return Dismissible(
      key: Key(travel['name']),
      background: Container(
        color: Colors.red,
        child: Icon(Icons.delete),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20.0),
      ),
      secondaryBackground: Container(
        color: Colors.green,
        child: Icon(Icons.edit),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20.0),
      ),
      onDismissed: (direction) => _onDismissedHandler(direction, travel),
      child: ListTile(
        leading: Icon(Icons.outlined_flag), 
        title: Text(travel['name']), 
        subtitle: Text('${travel['from']} à ${travel['to']}'),
        // onTap: () => Navigator.of(context).push(MaterialPageRoute(
        //   builder: (BuildContext context) => MyTravelsDetails())
        // ),
      )
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
      body: StreamBuilder(
        stream: Firestore.instance.collection('travel').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return Center(child: Text('Loading ...'));
          return ListView.builder(
            itemCount:  snapshot.data.documents.length,
            itemBuilder: (context, index) => _buildListItem(context, snapshot.data.documents[index])
          );
        }
      )
    );
  }
}