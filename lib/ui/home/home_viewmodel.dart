import 'dart:core';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier{

  bool isSelect = false;

  void isSelectTrue() {
    isSelect = !isSelect;
   return notifyListeners();
  }

  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }}