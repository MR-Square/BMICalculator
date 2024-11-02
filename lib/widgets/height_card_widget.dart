import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HeightCardWidget extends StatefulWidget {
  const HeightCardWidget({
    super.key,
    required this.heightFun,
    required this.selectedHeight,
  });

  final Function(double ht) heightFun;
  final double selectedHeight;

  @override
  State<HeightCardWidget> createState() => _HeightCardWidgetState();
}

class _HeightCardWidgetState extends State<HeightCardWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.22,
      margin: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.card1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Height',
            style: AppTextStyles.largeGrey24,
          ),
          RichText(
            text: TextSpan(
              text: widget.selectedHeight.toStringAsFixed(2),
              style: AppTextStyles.boldWhite30,
              children: const [
                TextSpan(text: 'cm', style: AppTextStyles.boldWhite18),
              ],
            ),
          ),
          Slider(
            value: widget.selectedHeight,
            min: 120,
            max: 200,
            // divisions: 1,
            onChanged: (newHt) => widget.heightFun(newHt),
            onChangeStart: (newHt) => widget.heightFun(newHt),
          )
        ],
      ),
    );
  }
}
