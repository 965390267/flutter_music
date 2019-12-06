import 'package:flutter/material.dart';
class ThemeState extends ChangeNotifier{
  ThemeData _themeData;//主题
  int _colorIndex;//主题

  ThemeState(this._colorIndex,this._themeData,);

  void changeThemeData(int colorIndex,ThemeData themeData){
    _themeData = themeData;
    _colorIndex = colorIndex;
    notifyListeners();
  }

  ThemeData get themeData => _themeData; //获取主题
  int get colorIndex => _colorIndex; //获取数字
}

