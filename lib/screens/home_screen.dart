import 'package:bmi_calculator/screens/form_screen.dart';
import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/widgets/app_bar_Widget.dart';
import 'package:bmi_calculator/widgets/bottom_btn_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String bottomBtnText = 'Calculate';
  int id = 1;

  int gender = 1;
  double ht = 120;
  double weight = 40;
  double age = 5;

  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = FormScreen(
      uGender: gender,
      uHeight: ht,
      uWeight: weight,
      uAge: age,
      callback: calculateBmi,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: appBarWidget(),
      body: activeScreen,
      bottomNavigationBar: BottomBtnWidget(
        bottomBtnText: bottomBtnText,
        onPress: () {
          if (id == 1) {
            bottomBtnText = 'Recalculate';
            calculateBmi();
            setState(() {});
          } else {
            bottomBtnText = 'Calculate';
            activeScreen = FormScreen(
              uGender: gender,
              uHeight: ht,
              uWeight: weight,
              uAge: age,
              callback: calculateBmi,
            );
            setState(() {});
          }
        },
      ),
    );
  }

  calculateBmi() {}
}
