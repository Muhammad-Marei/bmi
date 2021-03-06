import 'package:flutter/material.dart';
import 'Input_Page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black87,
          primaryColor: Color(0XFF050b56),
          accentColor: Colors.blueAccent,
          textTheme: TextTheme(
            body1: TextStyle(color: Colors.green),
          ),
        ),
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Color(0XFF050b56),
      //   accentColor: Colors.orange,
      //   scaffoldBackgroundColor: Colors.black87,
      // ),
      home: InputPage(),

      // initialRoute: '/Home',
      // routes: {
      //   '/Home': (context) => InputPage(),
      //   '/Result': (context) => Result(),
      // });
    );
  }
}
