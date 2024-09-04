import 'package:get/get.dart';

import '../controllers/milk_base_controller.dart';

class MilkBaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MilkBaseController>(
      () => MilkBaseController(),
    );
  }
}
