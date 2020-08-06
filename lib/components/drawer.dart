import 'package:flutter/material.dart';
import 'package:pt/News.dart';
import 'package:pt/bmiInputPage.dart';
import 'package:pt/components/homeRaisedButton.dart';
import 'package:pt/myth_busters.dart';
import 'package:pt/signin.dart';
import 'package:pt/signup.dart';
import 'list_tile.dart';
import 'package:pt/main.dart';

class DrawerPT extends StatelessWidget {
  const DrawerPT({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              color: Color(0xff005e54),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    child: DrawerHeader(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          HomeRaisedButton(
                            text: 'SignIn',
                            onPress: () {
                              Navigator.pushNamed(context, SignIn.id);
                            },
                          ),
                          SizedBox(
                            width: 4,
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
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        ListTileWidget(
                          icon: Icons.feedback,
                          text: 'Feedback',
                          onTap: () {},
                        ),
                        ListTileWidget(
                          icon: Icons.book,
                          text: 'News',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => News_Feed(),
                              ),
                            );
                          },
                        ),
                        ListTileWidget(
                          icon: Icons.message,
                          text: 'Community',
                          onTap: () {},
                        ),
                        ListTileWidget(
                          icon: Icons.notifications,
                          text: 'Notifications',
                          onTap: () {},
                        ),
                        ListTileWidget(
                          icon: Icons.assessment,
                          text: 'BMI Calculator',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BMI_InputPage(),
                              ),
                            );
                          },
                        ),
                        ListTileWidget(
                          icon: Icons.local_hospital,
                          text: 'Medical History',
                          onTap: () {},
                        ),
                        ListTileWidget(
                          icon: Icons.watch_later,
                          text: 'Reminder',
                          onTap: () {},
                        ),
                        ListTileWidget(
                          icon: Icons.location_on,
                          text: 'Near Me',
                          onTap: () {},
                        ),
                        ListTileWidget(
                          icon: Icons.settings,
                          text: 'Settings',
                          onTap: () {},
                        ),
                        ListTileWidget(
                          icon: Icons.warning,
                          text: 'Myth Busters',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Myth_Busters(),
                              ),
                            );
                          },
                        ),
                        ListTileWidget(
                          icon: Icons.queue,
                          text: "FAQ's",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
