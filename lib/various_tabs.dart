import 'package:flutter/material.dart';
import 'package:pt/components/round_button.dart';
import 'package:pt/final.dart';

class VariousTabs extends StatelessWidget {
  static const id = 'mental_health';

  VariousTabs({this.image, this.text});
  final String image;
  final String text;

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
                              builder: (context) => Final(),
                            ));
                      },
                    ),
                    RoundButton(
                      text: 'Symptoms & Precautions',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final(),
                            ));
                      },
                    ),
                    RoundButton(
                      text: "Do's & Dont's",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final(),
                            ));
                      },
                    ),
                    RoundButton(
                      text: 'Know More',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Final(),
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
