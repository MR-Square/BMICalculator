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
  Widget activeScreen = const FormScreen();
  String bottomBtnText = 'Calculate';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: appBarWidget(),
      body: activeScreen,
      bottomNavigationBar: BottomBtnWidget(
        bottomBtnText: bottomBtnText,
        onPress: () {},
      ),
    );
  }
}
