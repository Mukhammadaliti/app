import 'package:get/get.dart';

import '../controllers/welcom_controller.dart';

class WelcomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomController>(
      () => WelcomController(),
    );
  }
}
