import 'package:flutter/material.dart';
import 'package:qaroo/config/themes/app_dark_themes.dart';
import 'package:qaroo/config/themes/app_light_themes.dart';
import 'package:qaroo/config/themes/ui_parameter.dart';
const Color onSurfaceTextColor=Colors.white;
const mainGradientLight=LinearGradient(
    begin: Alignment.topLeft ,
    end: Alignment.bottomRight,
colors: [
  primaryLightColorRLight,
  primaryLightColor
]);
const mainGradientDark=LinearGradient(
    begin: Alignment.topLeft ,
    end: Alignment.bottomRight,
    colors: [
      primaryDarkColorDark,
      primaryDarkColor
    ]);

LinearGradient mainGradient(BuildContext context)=>
    UIParameters.isDarkMode(context)?mainGradientDark:mainGradientLight;