import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBarWidget());
  }
}

PreferredSizeWidget appBarWidget() {
  return AppBar(
    backgroundColor: AppColors.appBarColor,
    foregroundColor: AppColors.whiteTxtColor,
    title: const Text('BMI Calculator'),
    centerTitle: true,
  );
}
