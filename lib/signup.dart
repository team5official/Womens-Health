import 'components/constants.dart';
import 'package:flutter/material.dart';
import 'package:pt/signin.dart';
import 'components/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  static const String id = 'signup';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  String name;
  String username;
  String password;
  String cpassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff005e54),
      appBar: AppBar(
        backgroundColor: Color(0xff005e54),
        title: Text(
          'SignUp',
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Create An Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  name = value;
                },
                decoration: kTextfieldDecoration.copyWith(
                  hintText: 'Enter your Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: 'Username',
                  )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: 'Enter your password',
                  )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {
                    cpassword = value;
                  },
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: 'Confirm your password',
                  )),
            ),
            Text(
              'By creating an account you agree to our terms of service and privacy policy.',
            ),
            RoundButton(
              text: 'SignUp',
              onPress: () async {
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: username, password: password);
                  if (newUser != null) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ));
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ]),
    );
  }
}
