import 'package:flutter/material.dart';
import 'package:pt/components/round_button.dart';
import 'package:pt/final.dart';

class VariousTabs extends StatelessWidget {
  static const id = 'mental_health';

  VariousTabs({
    this.image,
    this.text,
    this.docfromhome,
  });
  final String image;
  final String text;
  final docfromhome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff005e54),
      appBar: AppBar(
        backgroundColor: Color(0xff005e54),
        title: Text(
          text,
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
                    image,
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
                              builder: (context) => Final(
                                titleText: 'About',
                                documentNum: docfromhome,
                                fieldName1: 'About',
                                fieldName2: 'About2',
                                topicTitle1: 'What it is?',
                                topicTitle2: 'Brief Information',
                              ),
                            ));
                      },
                    ),
                    RoundButton(
                      text: 'Symptoms & Precautions',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final(
                                titleText: 'Symptoms & Precautions',
                                documentNum: docfromhome,
                                fieldName1: 'Symptoms',
                                topicTitle1: 'Symptoms',
                                fieldName2: 'Precautions',
                                topicTitle2: 'Precautions',
                              ),
                            ));
                      },
                    ),
                    RoundButton(
                      text: "Do's & Don't",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final(
                                titleText: "Do's & Don'ts",
                                documentNum: docfromhome,
                                fieldName1: "Do's",
                                topicTitle2: "Don'ts",
                                fieldName2: "Don't",
                                topicTitle1: "Do's",
                              ),
                            ));
                      },
                    ),
                    RoundButton(
                      text: 'Know More',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final(
                                titleText: 'Know More',
                                documentNum: docfromhome,
                                fieldName1: 'Know More1',
                                topicTitle1: 'Know More',
                                topicTitle2: 'Brief Information',
                                fieldName2: 'Know More2',
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
