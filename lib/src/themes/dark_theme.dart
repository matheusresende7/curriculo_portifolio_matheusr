import 'package:flutter/material.dart';

class DarkTheme {

  ThemeData get materialTheme {
    return ThemeData(
      primaryColor: Colors.grey[700],
      primaryColorDark: Colors.grey[800],
      primaryColorLight: Colors.grey[600],
      accentColor: Colors.white,
      backgroundColor: Colors.grey[900],
      disabledColor: Colors.grey[400],
      indicatorColor: Colors.green,
      errorColor: Colors.red,
    );
  }

}