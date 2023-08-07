import 'package:flutter/material.dart';
import 'package:hello_world_flutter_movies/theme/text.dart';
import 'colors.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: appMateriaLightTextTheme,
    colorScheme: lightColorScheme,
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: appMateriaLightTextTheme,
    colorScheme: darkColorScheme,
    brightness: Brightness.dark,
  );

}