import 'package:flutter/material.dart';

class GenderCardStyle extends StatelessWidget {
  GenderCardStyle({@required this.icon, @required this.type});
  IconData icon;
  String type;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
          color: Colors.white,
        ),
        SizedBox(height: 15),
        Text(type, style: TextStyle(fontSize: 30, color: Colors.indigo))
      ],
    );
  }
}
