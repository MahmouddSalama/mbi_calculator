import 'package:flutter/material.dart';
import 'package:learn_fire_base/consts/colors.dart';
import 'package:provider/provider.dart';
import 'dart:math';
enum Gender {
  male,
  female,
}
class MyProvider with ChangeNotifier{
  var _gender=Gender.male;
  int _height=100;
  int _weight=40;
  int _age=20;
  double result=0;
  Color selected=Kselect1Color;

  void setMale(){
    _gender=Gender.male;
    notifyListeners();
  }
  void setFemale(){
    _gender=Gender.female;
    notifyListeners();
  }

  void setHeight(double value ){
    _height=value.round();
    notifyListeners();
  }


  void incresAge(){
    _age++;
    notifyListeners();
  }
  void decresAge(){
    _age--;
    notifyListeners();
  }

  void incresWeight(){
    _weight++;
    notifyListeners();
  }
  void decresWeight(){
    _weight--;
    notifyListeners();
  }

  Gender getGeder(){
    return _gender;
  }
  int getAge(){
    return _age;
  }
  int getWeight(){
    return _weight;
  }
  double getHeight(){
    return _height.toDouble();
  }

  Color getColor(){
      return selected;
  }

  double getResult(){
    result= _height*_height/_weight;
    return result;
  }
}