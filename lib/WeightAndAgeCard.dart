import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constant.dart';

int Wight = 50;
int Age = 10;

class WightCardStyle extends StatefulWidget {
  @override
  _WightCardStyleState createState() => _WightCardStyleState();
}

class _WightCardStyleState extends State<WightCardStyle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Wight', style: TextStyle(color: Colors.green, fontSize: 20)),
        Text(
          '$Wight',
          style: TextStyle(fontSize: 70, color: Colors.indigo),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonStyle(
                icon: Icon(Icons.add),
                onPressedState: () {
                  setState(() {
                    Wight++;
                    KWeight = Wight;
                  });
                }),
            SizedBox(
              width: 15,
            ),
            ButtonStyle(
                icon: Icon(Icons.minimize),
                onPressedState: () {
                  setState(() {
                    Wight--;
                    KWeight = Wight;
                  });
                }),
          ],
        )
      ],
    );
  }
}

class AgeCardStyle extends StatefulWidget {
  @override
  _AgeCardStyleState createState() => _AgeCardStyleState();
}

class _AgeCardStyleState extends State<AgeCardStyle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Age', style: TextStyle(color: Colors.green, fontSize: 20)),
        Text(
          '$Age',
          style: TextStyle(fontSize: 70, color: Colors.indigo),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonStyle(
                icon: Icon(Icons.add),
                onPressedState: () {
                  setState(() {
                    Age++;
                    kAge = Age;
                  });
                }),
            SizedBox(
              width: 15,
            ),
            ButtonStyle(
                icon: Icon(Icons.minimize),
                onPressedState: () {
                  setState(() {
                    Age--;
                    kAge = Age;
                  });
                }),
          ],
        )
      ],
    );
  }
}

class ButtonStyle extends StatelessWidget {
  ButtonStyle({this.icon, this.onPressedState});
  @override
  Widget icon;
  Function onPressedState;
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressedState,
      child: icon,
      fillColor: Colors.indigo,
      shape: CircleBorder(),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5) ),
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      elevation: 2,
    );
  }
}
