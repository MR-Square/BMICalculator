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
  double? result;

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
              result: result ?? 0,
            );
            id = 2;
            setState(() {});
          } else {
            bottomBtnText = 'Calculate';
            id = 1;
            ht = 120;
            weight = 40;
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
    result = weight / (ht * ht);
  }
}
