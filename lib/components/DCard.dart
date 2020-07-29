import 'package:flutter/material.dart';

class DCard extends StatelessWidget {
  DCard({@required this.Page, @required this.image, this.text});
  final Function Page;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Container(
        margin: EdgeInsets.all(5),
        height: 150,
        width: 130,
        child: GestureDetector(
          onTap: Page,
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(
                  image,
                ),
                height: 100,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
