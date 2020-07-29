import 'package:flutter/material.dart';

class HomeRaisedButton extends StatelessWidget {
  HomeRaisedButton({this.text, this.onPress});
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
      color: Colors.teal,
      onPressed: onPress,
    );
  }
}
