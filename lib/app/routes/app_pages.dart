import 'package:get/get.dart';

import '../modules/userapp/bindings/userapp_binding.dart';
import '../modules/userapp/views/userapp_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USERAPP;

  static final routes = [
    GetPage(
      name: _Paths.USERAPP,
      page: () =>  UserappView(),
      binding: UserappBinding(),
    ),
  ];
}
