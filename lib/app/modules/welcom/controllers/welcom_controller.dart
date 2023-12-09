import 'dart:async';

import 'package:get/get.dart';

class WelcomController extends GetxController {
  //TODO: Implement WelcomController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
     Timer(Duration(seconds: 3), () {
      Get.toNamed('/home'); // Переход к следующему экрану после паузы
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
