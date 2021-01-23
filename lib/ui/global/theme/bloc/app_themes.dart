import 'package:flutter/material.dart';
// 设计了四种主题
enum AppTheme {
  GreenLight,
  GreenDark,
  BlueLight,
  BlueDark
}
final appThemeData = {
  AppTheme.GreenLight:ThemeData(
    // brightness: Brightness.light,
    primaryColor: Colors.green,
      appBarTheme: AppBarTheme(
          // color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.red
          ),
          textTheme: TextTheme(
              title:TextStyle(
                  color: Colors.red,
                  fontSize: 30
              )
          )
      )
  ),
  AppTheme.GreenDark:ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
      appBarTheme: AppBarTheme(
          // color: Colors.black,
          textTheme: TextTheme(
              subtitle1:TextStyle(
                  color: Colors.yellow,
                  fontSize: 20
              )
          )
      )
  ),
  AppTheme.BlueDark:ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue[700],
      appBarTheme: AppBarTheme(
          // color: Colors.black,
          textTheme: TextTheme(
              subtitle1:TextStyle(
                  color: Colors.grey,
                  fontSize: 20
              )
          )
      )
  ),
  AppTheme.BlueLight:ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      appBarTheme: AppBarTheme(
          // color: Colors.black,
          textTheme: TextTheme(
              subtitle1:TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 20
              )
          )
      )
  ),
};