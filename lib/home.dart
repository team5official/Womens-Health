import 'package:flutter/material.dart';
import 'package:pt/domestic_abuse.dart';
import 'package:pt/signup.dart';
import 'signin.dart';
import 'various_tabs.dart';
import 'components/drawer.dart';
import 'components/modified_container.dart';
import 'components/homeRaisedButton.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005e54),
        title: Text('Women Health'),
      ),
      backgroundColor: Color(0xff005e54),
      drawer: DrawerPT(),
      body: ListView(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/dash.jpeg',
                    ),
                  ),
                ),
                height: 300,
                padding: EdgeInsets.all(30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    HomeRaisedButton(
                      text: 'SignIn',
                      onPress: () {
                        Navigator.pushNamed(context, SignIn.id);
                      },
                    ),
                    SizedBox(
                      width: 130,
                      height: 10,
                    ),
                    HomeRaisedButton(
                      text: 'SignUp',
                      onPress: () {
                        Navigator.pushNamed(context, SignUp.id);
                      },
                    )
                  ],
                ),
              ),
              ModifiedContainer(
                image1: 'images/brain.png',
                text1: 'Mental Health',
                image2: 'images/pregnant.png',
                text2: 'Pregnancy',
                route1: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VariousTabs(
                        image: 'images/mentalHealth.png',
                        text: 'Mental Health',
                        docfromhome: 2,
                      ),
                    ),
                  );
                },
                route2: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VariousTabs(
                        image: 'images/pregnancy.jpeg',
                        text: 'Pregnancy',
                        docfromhome: 6,
                      ),
                    ),
                  );
                },
              ),
              ModifiedContainer(
                image1: 'images/period.png',
                text1: 'Periods',
                image2: 'images/apple.png',
                text2: 'Nutrition',
                route1: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VariousTabs(
                        image: 'images/periodD.jpeg',
                        text: 'Periods',
                        docfromhome: 5,
                      ),
                    ),
                  );
                },
                route2: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VariousTabs(
                        image: 'images/Nutrition.jpeg',
                        text: 'Nutrition',
                        docfromhome: 4,
                      ),
                    ),
                  );
                },
              ),
              ModifiedContainer(
                image1: 'images/domesticV.jpg',
                text1: 'Domestic Abuse',
                image2: 'images/Report.png',
                text2: 'Independent',
                route1: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Domestic_Abuse(
                        imagefromD: 'images/domesticVhome.jpg',
                      ),
                    ),
                  );
                },
                route2: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VariousTabs(
                        image: 'images/independent.jpg',
                        text: 'Independent',
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ]),
    );
  }
}
