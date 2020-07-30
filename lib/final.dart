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
      backgroundColor: Color(0xff005e54),
      appBar: AppBar(
        title: Text(
          'About',
        ),
        backgroundColor: Color(0xff005e54),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: StreamBuilder(
                stream: Firestore.instance.collection('info').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Text('Loading data.....Please Wait!');
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text(
                          'What is it ?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text(
                          snapshot.data.documents[0]['Symptoms'],
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Bitter',
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
