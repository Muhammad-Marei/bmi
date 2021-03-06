import 'package:flutter/material.dart';
import 'Constant.dart';

int height = 180;

class HeightBoxStyle extends StatefulWidget {
  @override
  _HeightBoxStyleState createState() => _HeightBoxStyleState();
}

class _HeightBoxStyleState extends State<HeightBoxStyle> {
  @override
  Widget build(BuildContext context) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Height", style: TextStyle(color: Colors.green, fontSize: 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$height',
              style: TextStyle(fontSize: 70, color: Colors.indigo),
            ),
            Text(
              'cm',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              thumbColor: Color(0XFFEB1555),
              activeTrackColor: Colors.white,
              overlayColor: Color(0XBBEB1555),
              inactiveTrackColor: Colors.indigo,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 15)),
          child: Slider(
            value: height.toDouble(),
            min: 120,
            max: 220,
            onChanged: (double newValues) {
              setState(() {
                height = newValues.round();
                kHeight = newValues.round();
              });
            },
          ),
        )
      ],
    ));
  }
}
