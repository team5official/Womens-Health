import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  static const id = 'finale';

  Final({
    this.titleText,
    this.documentNum,
    this.fieldName1,
    this.topicTitle1,
    this.topicTitle2,
    this.fieldName2,
  });
  final String titleText;
  final documentNum;
  final fieldName1;
  final topicTitle1;
  final topicTitle2;
  final fieldName2;

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

                  var datas1 = snapshot.data.documents[documentNum][fieldName1];
                  var datas2 = snapshot.data.documents[documentNum][fieldName2];
                  var finale1 = datas1.replaceAll("//n", "\n");
                  var finale2 = datas2.replaceAll("//n", "\n");

                  return ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: Text(
                              topicTitle1,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: Text(
                              finale1,
//                          snapshot.data.documents[0]['About'],
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Bitter',
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: Text(
                              topicTitle2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                            child: Text(
                              finale2,
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
