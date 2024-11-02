import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class GenderCardWidget extends StatelessWidget {
  const GenderCardWidget({
    super.key,
    // required this.width,
    // required this.height,
    required this.id,
    required this.selectedGender,
    required this.img,
    required this.label,
  });

  // final double width;
  // final double height;
  final int id;
  final int? selectedGender;
  final String img;
  final String label;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.4,
      height: height * 0.22,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: selectedGender == id ? AppColors.card2 : AppColors.card1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/$img'),
          Text(
            label,
            style: AppTextStyles.largeGreyText,
          ),
        ],
      ),
    );
  }
}
