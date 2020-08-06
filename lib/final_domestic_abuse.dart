import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Final_Domestic_Abuse extends StatelessWidget {
  static const id = 'finale';

  Final_Domestic_Abuse(
      {this.titleText, this.documentNum, this.fieldName, this.topicTitle});
  final String titleText;
  final documentNum;
  final fieldName;
  final topicTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff005e54),
      appBar: AppBar(
        title: Text(
          titleText,
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

                  var datas = snapshot.data.documents[documentNum][fieldName];
                  var finale = datas.replaceAll("//n", "\n");

                  return ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: Text(
                              topicTitle,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: Text(
                              finale,
//                          snapshot.data.documents[0]['About'],
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Bitter',
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
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
