

import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  // light chip theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: TColors.black),
    selectedColor: TColors.primary,
    padding: const  EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: TColors.white
  );

  // dark chip theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
      disabledColor: TColors.grey,
      labelStyle:  TextStyle(color: TColors.white),
      selectedColor: TColors.primary,
      padding:   EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      checkmarkColor: TColors.white
  );
}