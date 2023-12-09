import 'package:app/app/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterTextWidgets extends StatelessWidget {
  RegisterTextWidgets({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.color32,
          fontFamily: "SenRegular",
          fontSize: 18,
          fontWeight: FontWeight.w400),
    );
  }
}