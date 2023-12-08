import 'package:app/app/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcom_controller.dart';

class WelcomView extends GetView<WelcomController> {
  const WelcomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueC,
      body: const Center(
        child: Text(
          'Dомашний',
          style: TextStyle(fontSize: 40, fontFamily: "Disket"),
        ),
      ),
    );
  }
}
