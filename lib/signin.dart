import 'package:flutter/material.dart';
import 'package:pt/components/constants.dart';
import 'package:pt/signup.dart';
import 'components/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home.dart';

class SignIn extends StatefulWidget {
  static const String id = 'signin';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth = FirebaseAuth.instance;
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff005e54),
      appBar: AppBar(
        backgroundColor: Color(0xff005e54),
        title: Text(
          'SignIn',
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'LogIn To Your Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: 'Enter you Username',
                  )),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: 'Enter you password',
                  )),
            ),
            RoundButton(
              text: 'SignIn',
              onPress: () async {
                final user = await _auth.signInWithEmailAndPassword(
                    email: username, password: password);
                if (user != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                }
              },
            ),
            SizedBox(
              width: 200.0,
              height: 10,
              child: Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Don't Already Have An Account ?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            RoundButton(
              text: 'SignUp',
              onPress: () {
                Navigator.pushNamed(context, SignUp.id);
              },
            ),
          ],
        ),
      ]),
    );
  }
}
