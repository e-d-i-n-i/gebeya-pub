import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/utils/theme/custome_themes/appbar_theme.dart';
import 'package:gebeya_ecommerce_application/utils/theme/custome_themes/bottom_sheet_theme.dart';
import 'package:gebeya_ecommerce_application/utils/theme/custome_themes/checkbox_theme.dart';
import 'package:gebeya_ecommerce_application/utils/theme/custome_themes/chip_theme.dart';
import 'package:gebeya_ecommerce_application/utils/theme/custome_themes/elevated_button_theme.dart';
import 'package:gebeya_ecommerce_application/utils/theme/custome_themes/outlined_buttom_theme.dart';
import 'package:gebeya_ecommerce_application/utils/theme/custome_themes/text_field_theme.dart';
import 'package:gebeya_ecommerce_application/utils/theme/custome_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      chipTheme: TChipTheme.lightChipTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: TOutlinedBottonTheme.lightOutlinedBottomTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: TChipTheme.darkChipTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: TOutlinedBottonTheme.darkOutlinedBottomTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}
