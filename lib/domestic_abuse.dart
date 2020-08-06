import 'package:flutter/material.dart';
import 'package:pt/components/round_button.dart';
import 'package:pt/final_domestic_abuse.dart';

class Domestic_Abuse extends StatelessWidget {
  Domestic_Abuse({this.imagefromD});
  final imagefromD;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff005e54),
      appBar: AppBar(
        backgroundColor: Color(0xff005e54),
        title: Text(
          'Domestic Abuse',
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    imagefromD,
                    //'images/mentalHealth.png',
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 0),
                child: Column(
                  children: <Widget>[
                    RoundButton(
                      text: 'About',
                      onPress: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                              builder: (context) => Final_Domestic_Abuse(
                                titleText: 'About',
                                documentNum: 0,
                                fieldName: 'About',
                                topicTitle:
                                    'Brief Information About Domestic Violence',
                              ),
                            ));
                      },
                    ),
                    RoundButton(
                      text: "Do's & Don'ts",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final_Domestic_Abuse(
                                titleText: "Do's & Don'ts",
                                documentNum: 0,
                                fieldName: "Do's & Don'ts",
                                topicTitle:
                                    "Do's & Don'ts About Domestic Violence",
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
                              builder: (context) => Final_Domestic_Abuse(
                                titleText: 'Know More',
                                documentNum: 0,
                                fieldName: 'Know More',
                                topicTitle: 'Know More About Domestic Violence',
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
                              builder: (context) => Final_Domestic_Abuse(
                                titleText: 'Report',
                                documentNum: 0,
                                fieldName: 'Report',
                                topicTitle: 'Report',
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
