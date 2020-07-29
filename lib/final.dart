import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Final extends StatefulWidget {
  static const id = 'mh_about';

  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
        ),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('MentalHealth').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Text('Loading data.....Please Wait!');
          return Column(
            children: <Widget>[
              Text(
                snapshot.data.documents[0]['data'],
              )
            ],
          );
        },
      ),
    );
  }
}
