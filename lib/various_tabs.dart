import 'package:flutter/material.dart';
import 'package:pt/components/round_button.dart';
import 'package:pt/final.dart';

class VariousTabs extends StatelessWidget {
  static const id = 'mental_health';

  VariousTabs({this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff005e54),
      appBar: AppBar(
        backgroundColor: Color(0xff005e54),
        title: Text(
          'Mental Health',
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
            )
          ],
        ),
      ]),
    );
  }
}
