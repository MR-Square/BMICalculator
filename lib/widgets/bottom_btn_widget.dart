import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BottomBtnWidget extends StatelessWidget {
  const BottomBtnWidget({
    super.key,
    required this.bottomBtnText,
    required this.onPress,
  });

  final String bottomBtnText;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.largeBtn,
      child: GestureDetector(
        onTap: onPress,
        child: Center(
          child: Text(
            bottomBtnText,
            style: const TextStyle(
              color: AppColors.whiteTxtColor,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
