import 'package:flutter/material.dart';

class HYAppTheme {

  // 1.普通模式
  static final Color norTextColors = Colors.red;

  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
  );

  // 2.暗黑模式
  static final Color darkTextColors = Colors.green;

  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
  );
}