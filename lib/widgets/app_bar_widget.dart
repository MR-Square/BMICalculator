import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarWidget() {
  return AppBar(
    backgroundColor: AppColors.appBarColor,
    foregroundColor: AppColors.whiteTxtColor,
    title: const Text('BMI Calculator'),
    centerTitle: true,
  );
}
