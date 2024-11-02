import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: width * 0.4,
          height: height * 0.22,
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.card1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/male.png'),
              const Text(
                'Male',
                style: AppTextStyles.largeGreyText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
