import 'package:new_start/CardsStyle.dart';
import 'package:flutter/material.dart';
import 'Constant.dart';
class Result extends StatelessWidget {
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
        home: Scaffold(
          appBar: AppBar(
            title: Text('Result'),
          ),
          body: Column(
            children: [
              Text(
                'Calculate',
                style: TextStyle(fontSize: 20, color: Colors.indigo),
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    child: CardStyle(
                      color: inactiveColor,
                      cardStyle: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Your BMI Result',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.green),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(CalculateBMI(),
                              style:
                                  TextStyle(fontSize: 100, color: Colors.white),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(Massage(), style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(60)),
                     height: 60,width:double.infinity,
                child: Expanded(
                  child: ElevatedButton(style: ButtonStyle(),
                    child: Center(child: Text('RE-Calculate',style: TextStyle(fontSize: 10),)),
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.pushNamed(context, '/Result');
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}


