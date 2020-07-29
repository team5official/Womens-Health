import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget(
      {@required this.icon, @required this.text, @required this.onTap});
  final String text;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onTap: onTap,
    );
  }
}
