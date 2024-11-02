import 'package:bmi_calculator/utils/app_colors.dart';
import 'package:bmi_calculator/widgets/gender_card_widget.dart';
import 'package:bmi_calculator/widgets/height_card_widget.dart';
import 'package:bmi_calculator/widgets/small_card_widget.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({
    super.key,
    required this.uGender,
    required this.uHeight,
    required this.uWeight,
    required this.uAge,
    required this.callback,
  });

  final int uGender;
  final double uHeight;
  final double uWeight;
  final double uAge;
  final VoidCallback callback;

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  Color? selectedGenderColor = AppColors.card2;
  int? selectedGender;
  double selectedHeight = 120;
  double selectedWeight = 40;
  double selectedAge = 5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => selectGender(1),
                  child: GenderCardWidget(
                    id: 1,
                    img: 'male.png',
                    label: 'Male',
                    selectedGender: selectedGender,
                  ),
                ),
                GestureDetector(
                  onTap: () => selectGender(0),
                  child: GenderCardWidget(
                    id: 0,
                    img: 'female.png',
                    label: 'Female',
                    selectedGender: selectedGender,
                  ),
                ),
              ],
            ),
            HeightCardWidget(
              heightFun: selectHeight,
              selectedHeight: selectedHeight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallCardWidget(
                  label: 'Weight',
                  value: selectedWeight,
                  subFun: () {
                    setState(() {
                      selectedWeight -= 0.2;
                    });
                  },
                  addFun: () {
                    setState(() {
                      selectedWeight += 0.2;
                    });
                  },
                ),
                SmallCardWidget(
                  label: 'Age',
                  value: selectedAge,
                  subFun: () {
                    setState(() {
                      selectedAge -= 0.5;
                    });
                  },
                  addFun: () {
                    setState(() {
                      selectedAge += 0.5;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  selectGender(int gId) {
    setState(() {
      selectedGender = gId;
    });
  }

  selectHeight(double newHt) {
    setState(() {
      selectedHeight = newHt;
    });
  }
}
/**
Container(
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
                      const Text(
                        'Weight',
                        style: AppTextStyles.largeGrey24,
                      ),
                      Text(
                        selectedWeight.toStringAsFixed(1),
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
                            onPressed: () {
                              setState(() {
                                selectedWeight -= 0.2;
                              });
                            },
                            icon: const Icon(Icons.remove),
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(0),
                            style: IconButton.styleFrom(
                              backgroundColor: AppColors.smallBtn,
                            ),
                            highlightColor: Colors.white,
                            color: AppColors.whiteTxtColor,
                            onPressed: () {
                              setState(() {
                                selectedWeight += 0.2;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), 

*/