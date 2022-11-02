import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      dividerColor: const Color(0xff555555),
      cardColor: const Color(0xff333333),
      backgroundColor: const Color(0xffFCFCFC),
      primaryColor: const Color(0xff0038F5),
      shadowColor: Colors.grey.withOpacity(0.2),
      appBarTheme: const AppBarTheme(
        shadowColor: Color(0xff0038F5),
        surfaceTintColor: Color(0xffF0F0F0),
        backgroundColor: Color(0xffFCFCFC),
        foregroundColor: Color(0xff333333),
      ),
      scaffoldBackgroundColor: const Color(0xffFCFCFC),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: 'Epilogue',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(0xff333333),
          height: 2,
        ),
        headline2: TextStyle(
          fontFamily: 'Epilogue',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff333333),
          height: 2,
        ),
        headline3: TextStyle(
          color: Color(0xff333333),
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        headline4: TextStyle(
          fontFamily: 'Epilogue',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color(0xff333333),
        ),
        headline5: TextStyle(
          fontFamily: 'Epilogue',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff333333),
        ),
        headline6: TextStyle(
          color: Color(0xff333333),
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        subtitle1: TextStyle(
          color: Color(0xff333333),
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      dividerColor: const Color(0xffFCFCFC),
      cardColor: const Color(0xffFCFCFC),
      backgroundColor: const Color(0xff444444),
      primaryColor: const Color(0xffFCFCFC),
      shadowColor: Colors.grey.withOpacity(0.0),
      appBarTheme: const AppBarTheme(
        shadowColor: Color(0xffFCFCFC),
        surfaceTintColor: Color(0xff333333),
        backgroundColor: Color(0xff333333),
        foregroundColor: Color(0xffFCFCFC),
      ),
      scaffoldBackgroundColor: Colors.grey.shade900,
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: 'Epilogue',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color(0xffFCFCFC),
          height: 2,
        ),
        headline2: TextStyle(
          fontFamily: 'Epilogue',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xffFCFCFC),
          height: 2,
        ),
        headline3: TextStyle(
          color: Color(0xffFCFCFC),
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        headline4: TextStyle(
          fontFamily: 'Epilogue',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color(0xffFCFCFC),
        ),
        headline5: TextStyle(
          fontFamily: 'Epilogue',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xffFCFCFC),
        ),
        headline6: TextStyle(
          color: Color(0xffFCFCFC),
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        subtitle1: TextStyle(
          color: Color(0xffFCFCFC),
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
    );
  }
}
// class ThemeChanger with ChangeNotifier {
//   var _themeMode = ThemeMode.light;
//   ThemeMode get themeMode => _themeMode;
//   void setTheme(themeMode) {
//     _themeMode = themeMode;
//     notifyListeners();
//   }
// }

// class FavourateProvider with ChangeNotifier {
//   final List<int> _favourate = [];
//   List<int> get favourate => _favourate;
//   void addItem(int value) {
//     _favourate.add(value);
//     notifyListeners();
//   }
// }

class TimerProvider with ChangeNotifier {
  var _hourse = '14', _minute = '30', _second = '25';
  int _hourses = 14, _minutes = 30, _seconds = 25;

  get hourse => _hourse;
  get minute => _minute;
  get second => _second;

  int get hourses => _hourses;
  int get minutes => _minutes;
  int get seconds => _seconds;

  void startSecond() {
    if (_seconds > 0) {
      _seconds--;
      _second = _seconds.toString();
      if (_second.length == 1) {
        _second = '0' + _second;
      }
    } else {
      _startMinute();
    }
    notifyListeners();
  }

  void _startMinute() {
    if (_minutes > 0) {
      _seconds = 59;
      _second = '59';
      _minutes--;
      _minute = _minutes.toString();
      if (_minute.length == 1) {
        _minute = '0' + _minute;
      }
    } else {
      _startHourse();
    }
    notifyListeners();
  }

  void _startHourse() {
    _seconds = 59;
    _minutes = 59;
    _second = '59';
    _minute = '59';
    _hourses--;
    _hourse = _hourses.toString();
    if (_hourse.length == 1) {
      _hourse = '0' + _hourse;
    }
    notifyListeners();
  }
}
