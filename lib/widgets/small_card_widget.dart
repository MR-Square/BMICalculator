import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SmallCardWidget extends StatefulWidget {
  const SmallCardWidget({
    super.key,
    required this.label,
    required this.value,
    required this.subFun,
    required this.addFun,
  });

  final String label;
  final double value;
  final VoidCallback subFun;
  final VoidCallback addFun;

  @override
  State<SmallCardWidget> createState() => _SmallCardWidgetState();
}

class _SmallCardWidgetState extends State<SmallCardWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.4,
      height: height * 0.26,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.card1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.label,
            style: AppTextStyles.largeGrey24,
          ),
          Text(
            widget.value.toStringAsFixed(1),
            style: AppTextStyles.boldWhite50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                padding: const EdgeInsets.all(0),
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.smallBtn,
                ),
                highlightColor: Colors.white,
                color: AppColors.whiteTxtColor,
                onPressed: widget.subFun,
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.smallBtn,
                ),
                highlightColor: Colors.white,
                color: AppColors.whiteTxtColor,
                onPressed: widget.addFun,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
