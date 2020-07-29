import 'package:flutter/material.dart';
import 'package:pt/components/round_button.dart';
import 'package:pt/final.dart';

class Pregnancy extends StatelessWidget {
  static const id = 'pregnancy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pregnancy',
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'images/pregnancy.jpeg',
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
              text: 'Precautions & Symptoms',
            ),
            RoundButton(
              text: "Do's & Dont's",
            ),
            RoundButton(
              text: 'Know More',
            )
          ],
        ),
      ]),
    );
  }
}
