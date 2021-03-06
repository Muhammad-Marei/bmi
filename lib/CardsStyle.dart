import 'package:flutter/material.dart';


class CardStyle extends StatelessWidget {
  CardStyle({@required this.color, this.cardStyle});

  final color;
  final Widget cardStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardStyle,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(color: Color(color), borderRadius: BorderRadius.circular(10)),
    );
  }
}
