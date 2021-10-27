import 'package:flutter/material.dart';
import 'package:pt/final.dart';
import 'signin.dart';
import 'signup.dart';
import 'various_tabs.dart';
import 'home.dart';

void main() => runApp(pt());

class pt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SignIn.id: (context) => SignIn(),
        SignUp.id: (context) => SignUp(),
        VariousTabs.id: (context) => VariousTabs(),
        Final.id: (context) => Final(),
      },
    );
  }
}

////Terms and conditions
////Info from verified source
////Try to promote ayurvedic
////No blame game
////Exercise and meditation
////.gov info --> Verified
////Mention reference

//Changes added from janhavi

//Amazing Project just focus on process rather than focusing on end result.
