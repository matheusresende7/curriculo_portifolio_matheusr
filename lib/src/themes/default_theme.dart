import 'package:flutter/material.dart';

class DefaultTheme {

  ThemeData get materialTheme {
    return ThemeData(
      primaryColor: Color(0xff060056),
      primaryColorDark: Color(0xff0000cc),
      primaryColorLight: Color(0xff00BFFF),
      accentColor: Colors.white,
      backgroundColor: Colors.white,
      disabledColor: Colors.grey[400],
      indicatorColor: Colors.green,
      errorColor: Colors.red,
    );
  }

}