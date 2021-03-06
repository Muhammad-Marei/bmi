import 'dart:math';
const inactiveColor = 0XFF091020;
const activeColor = 0XFF091060;
int maleColor = inactiveColor;
int femaleColor = inactiveColor;
int KWeight=0;
int kAge=0;
int kHeight=0;
double BMI=0;
String massage;
enum Gender { male, female }
genderCase1() {
  maleColor = activeColor;
  femaleColor = inactiveColor;
}

genderCase2() {
  maleColor = inactiveColor;
  femaleColor = activeColor;
}
String CalculateBMI(){
  BMI=KWeight/pow(kHeight/100,2);
  return BMI.toStringAsFixed(1);
}

String Massage(){
  if(BMI>=25){
    massage= 'you are so fat hhhhhhhhhhhhh';
  }
  else if(BMI <=12){massage= 'you need to eat';}
  else{massage= 'your wight is good';}
return massage ;
}