import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.val,
    required this.status,
    required this.description,
  });

  final double val;
  final String status;
  final String description;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          width: width,
          child: const Text(
            'Result',
            textAlign: TextAlign.center,
            style: AppTextStyles.boldWhite50,
          ),
        ),
        Container(
          width: width * 0.85,
          height: height * 0.7,
          decoration: BoxDecoration(
            color: AppColors.card1,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              SizedBox(height: height * 0.1),
              Text(
                status,
                style: AppTextStyles.boldGreen30,
              ),
              SizedBox(height: height * 0.1),
              Text(
                val.toStringAsFixed(2),
                style: AppTextStyles.boldWhite50,
              ),
              SizedBox(height: height * 0.1),
              SizedBox(
                width: width * 0.65,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.largeGreyText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
