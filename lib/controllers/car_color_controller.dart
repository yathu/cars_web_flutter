import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarColorController extends ChangeNotifier{
  Color carColor = Colors.white;

  void changeColor(Color color){
    carColor = color;
    notifyListeners();
  }

}