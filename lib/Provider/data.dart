import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class DataProvider with ChangeNotifier{

  int _Weight = 50;
  int _Age = 20;
  //double _sliderValue = 0.1;
  bool _Gender = true;
  int _Hight = 159;

  static const _kminSliderHight = 120.0;
  static const _kmaxSliderHight = 200.0;

  get Hight => _Hight;
  get Weight => _Weight;
  get Age => _Age;
  //get sliderValue => _sliderValue;
  get Gender => _Gender;
  get kminSliderHight => _kminSliderHight;
  get kmaxSliderHight => _kmaxSliderHight;


  void setHight(int value){
    //_pageNumber--;
    _Hight = value;
    notifyListeners();
  }

  void setGender(bool value){
    //_pageNumber--;
    _Gender = value;
    notifyListeners();
  }

  void setWeight(int value){
    _Weight = value;
    notifyListeners();
  }

  void setAge(int value){
    _Age = value;
    notifyListeners();
  }


  double calculateBMI(){
    return (_Weight /pow((_Hight/100), 2));
  }

  // void setsliderValue(double value){
  //   //_pageNumber--;
  //   _sliderValue = value;
  //   notifyListeners();
  // }


}