import 'package:flutter/material.dart';
import 'package:rehla_mart/utils/theme/custon_themes/appbar_theme.dart';
import 'package:rehla_mart/utils/theme/custon_themes/bottom_sheet_theme.dart';
import 'package:rehla_mart/utils/theme/custon_themes/checkbox_theme.dart';
import 'package:rehla_mart/utils/theme/custon_themes/chip_theme.dart';
import 'package:rehla_mart/utils/theme/custon_themes/elevated_button_theme.dart';
import 'package:rehla_mart/utils/theme/custon_themes/outlined_button_theme.dart';
import 'package:rehla_mart/utils/theme/custon_themes/text_field_theme.dart';
import 'package:rehla_mart/utils/theme/custon_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TtextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckBox.lightCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TtextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckBox.darkCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}
