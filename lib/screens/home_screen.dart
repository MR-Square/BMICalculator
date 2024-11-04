import 'package:bmi_calculator/screens/form_screen.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
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
  double? bmiVal;
  String? result;
  Color? resultColor;
  String? description;

  int gender = 1;
  double ht = 120;
  double weight = 40;
  double age = 5;

  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = FormScreen(
      onDataChanged: _updateData,
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
            activeScreen = ResultScreen(
              val: bmiVal ?? 0,
              status: result ?? '',
              description: description ?? '',
              statusColor: resultColor ?? AppColors.largeBtn,
            );
            id = 2;
            setState(() {});
          } else {
            bottomBtnText = 'Calculate';
            id = 1;
            ht = 120;
            weight = 40;
            resultColor = null;
            activeScreen = FormScreen(
              onDataChanged: _updateData,
            );
            setState(() {});
          }
        },
      ),
    );
  }

  void _updateData(double updatedHt, double updatedWt) {
    ht = updatedHt;
    weight = updatedWt;
  }

  calculateBmi() {
    // converting height from cm to m.
    ht = ht / 100;
    bmiVal = weight / (ht * ht);
    if (bmiVal! < 16.0) {
      result = 'Severe Thinness';
      description =
          'You have a Severe Thinness body weight, Need more focus on health';
    } else if (bmiVal! >= 16.0 && bmiVal! <= 16.9) {
      result = 'Moderate Thinness';
      description =
          'You have a Moderate Thinness body weight, Need more focus on health';
    } else if (bmiVal! >= 17.0 && bmiVal! <= 18.4) {
      result = 'Mild Thinness';
      description =
          'You have a Mild Thinness body weight, Need focus on health';
    } else if (bmiVal! >= 18.5 && bmiVal! <= 24.9) {
      result = 'Normal';
      description = 'You have a Normal body weight, Good Job!';
      resultColor = AppColors.greenTxtColor;
    } else if (bmiVal! >= 25.0 && bmiVal! <= 29.9) {
      result = 'Overweight';
      description = 'Your weight is Overweighted, need focus on your health';
    } else {
      result = 'Obese Class';
      description = 'You fall in Obese Class, work on your health';
    }
  }
}
