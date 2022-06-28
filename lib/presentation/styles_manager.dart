import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color,double? height) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      height: height
  );
}

TextStyle getBoldStyle({double fontSize = FontSize.s12, double? height, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.bold, color,height);
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, double? height, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color,height);
}

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, double? height, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color,height);
}

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, double? height, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color,height);
}

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, double? height, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily,
      FontWeightManager.light, color,height
  );
}
