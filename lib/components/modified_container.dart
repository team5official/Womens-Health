import 'package:flutter/material.dart';
import 'DCard.dart';

class ModifiedContainer extends StatelessWidget {
  ModifiedContainer({
    @required this.image1,
    @required this.image2,
    @required this.route1,
    @required this.route2,
    this.text1,
    this.text2,
  });
  final String image1;
  final String image2;
  final Function route1;
  final Function route2;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 160,
      width: 350,
      child: Row(
        children: <Widget>[
          DCard(
            image: image1,
            Page: route1,
            text: text1,
          ),
          SizedBox(
            height: 10,
            width: 30,
          ),
          DCard(
            image: image2,
            Page: route2,
            text: text2,
          ),
        ],
      ),
    );
  }
}
