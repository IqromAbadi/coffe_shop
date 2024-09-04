import 'package:get/get.dart';

import '../controllers/manual_brew_controller.dart';

class ManualBrewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManualBrewController>(
      () => ManualBrewController(),
    );
  }
}
