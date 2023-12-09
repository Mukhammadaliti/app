import 'package:app/app/modules/welcom/controllers/welcom_controller.dart';
import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/auth_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

import '../modules/welcom/bindings/welcom_binding.dart';
import '../modules/welcom/views/welcom_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOM;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOM,
      page: () => const WelcomView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => WelcomController());
      }),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () =>  AuthView(),
      binding: AuthBinding(),
    ),
  ];
}
