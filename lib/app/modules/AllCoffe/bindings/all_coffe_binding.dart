import 'package:get/get.dart';

import '../controllers/all_coffe_controller.dart';

class AllCoffeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllCoffeController>(
      () => AllCoffeController(),
    );
  }
}
