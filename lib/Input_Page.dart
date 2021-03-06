import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CardsStyle.dart';
import 'Gender_Card_Style.dart';
import 'HeightBox.dart';
import 'Constant.dart';
import 'WeightAndAgeCard.dart';
import 'ResultPage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(children: [
                genderCard(
                    FontAwesomeIcons.male, 'mail', maleColor, Gender.male),
                genderCard(FontAwesomeIcons.female, 'female', femaleColor,
                    Gender.female)
              ]),
            ),
            Expanded(
                child:
                    CardStyle(color: inactiveColor, cardStyle: HeightBoxStyle())),
            Expanded(
                child: Row(children: [
              Expanded(
                  child: CardStyle(
                      color: inactiveColor, cardStyle: WightCardStyle())),
              Expanded(
                  child: CardStyle(
                color: inactiveColor,
                cardStyle: AgeCardStyle(),
              ))
            ])),
            ElevatedButton(

              child: Container(child: Center(child: Text('Result',style: TextStyle(fontSize: 20),)),height: 60,width: double.infinity,),
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder:(context)=>Result()));
               // Navigator.pushNamed(context, '/Result');
              },
            ),
          ],
        ),
      ),
    );
  }

  Expanded genderCard(var cardIcon, String gender, int color,
      Gender genderType) //using this function at state full widget
  {
    return Expanded(
        child: GestureDetector(
            onTap: () {
              setState(() {
                genderType == Gender.male ? genderCase1() : genderCase2();
              });
            }, //case1()=updateColor(Gender.male)& case2()=updateColor(Gender.female)
            child: Expanded(
                child: CardStyle(
                    color: color,
                    cardStyle: GenderCardStyle(
                      icon: cardIcon,
                      type: gender,
                    )))));
  }
}
