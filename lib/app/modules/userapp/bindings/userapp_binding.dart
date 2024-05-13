import 'package:get/get.dart';

import '../controllers/userapp_controller.dart';

class UserappBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserappController>(
      () => UserappController(),
    );
  }
}
