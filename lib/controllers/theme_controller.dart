import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qaroo/config/themes/app_dark_themes.dart';
import 'package:qaroo/config/themes/app_light_themes.dart';

class ThemeController extends GetxController{
  late ThemeData _darkTheme;
  late ThemeData _lightTheme;

  @override
  void onInit(){
    initializedThemeData();
    super.onInit();
  }
  initializedThemeData(){
    _darkTheme=DarkTheme().buildTheme();
    _lightTheme=LightTheme().buildTheme();
  }
  ThemeData get darkTheme=>_darkTheme;
  ThemeData get lightTheme=>_lightTheme;

}