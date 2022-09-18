import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qaroo/config/themes/sub_theme_data_mixin.dart';

const Color primaryDarkColorDark=Color(0xFF2e3c62);
const Color primaryDarkColor=Color(0xFF99ace1);
const Color mainTextColorDark=Color.fromARGB(255, 255, 255, 255);

class DarkTheme with SubThemeData{
  ThemeData buildTheme(){

    final ThemeData systemDarkTheme= ThemeData.dark();
    return systemDarkTheme.copyWith(
        iconTheme: getIconTheme(),
        textTheme: geTextThemes().apply(
            bodyColor:mainTextColorDark,
            displayColor:mainTextColorDark
        )
    );
  }

}