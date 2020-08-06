import 'package:flutter/material.dart';
import 'package:pt/components/round_button.dart';
import 'final_myth_busters.dart';

class Myth_Busters extends StatelessWidget {
  static const id = 'mental_health';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff005e54),
      appBar: AppBar(
        backgroundColor: Color(0xff005e54),
        title: Text(
          'Myth Busters',
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 0),
                child: Column(
                  children: <Widget>[
                    RoundButton(
                      text: 'Mental Health',
                      onPress: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                              builder: (context) => Final_Myth_Busters(
                                titleText: 'Mental Health',
                                documentNum: 3,
                                fieldName: 'Mental Health',
                                topicTitle: 'Mental Health Myth Busters',
                              ),
                            ));
                      },
                    ),
                    RoundButton(
                      text: 'Pregnancy',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final_Myth_Busters(
                                titleText: 'Pregnancy',
                                documentNum: 3,
                                fieldName: 'Pregnancy',
                                topicTitle: 'Pregnancy Myth Busters',
                              ),
                            ));
                      },
                    ),
                    RoundButton(
                      text: 'Periods',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final_Myth_Busters(
                                titleText: 'Periods',
                                documentNum: 3,
                                fieldName: 'Periods',
                                topicTitle: 'Periods Myth Busters',
                              ),
                            ));
                      },
                    ),
                    RoundButton(
                      text: 'Nutrition',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final_Myth_Busters(
                                titleText: 'Nutrition',
                                documentNum: 3,
                                fieldName: 'Nutrition',
                                topicTitle: 'Nutrition Myth Busters',
                              ),
                            ));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
