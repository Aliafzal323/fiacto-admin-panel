import 'package:flutter/material.dart';
import 'package:dio_project/utils/theme/custom_themes/appbar_theme.dart';
import 'package:dio_project/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:dio_project/utils/theme/custom_themes/checkbox.dart';
import 'package:dio_project/utils/theme/custom_themes/chip_theme.dart';
import 'package:dio_project/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:dio_project/utils/theme/custom_themes/outline_button.dart';
import 'package:dio_project/utils/theme/custom_themes/text_field_theme.dart';
import 'package:dio_project/utils/theme/custom_themes/text_theme.dart';

class CustomAppTheme {
  CustomAppTheme._();

  //Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primarySwatch: Colors.green,
    primaryColor: Colors.greenAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CustomTextTheme.lightTextTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    appBarTheme: CustomAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    checkboxTheme: CustomCheckBox.lightCheckBoxTheme,
    outlinedButtonTheme: CustomOutlineButtonTheme.lightCustomOutlineButton,
    inputDecorationTheme: CustomTextFormTheme.lightInputDecorationTheme,
  );

  //Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primarySwatch: Colors.green,
    primaryColor: Colors.greenAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CustomTextTheme.darkTextTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    appBarTheme: CustomAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
    checkboxTheme: CustomCheckBox.darkCheckBoxTheme,
    outlinedButtonTheme: CustomOutlineButtonTheme.darkCustomOutlineButton,
    inputDecorationTheme: CustomTextFormTheme.darkInputDecorationTheme,
  );
}
