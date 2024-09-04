import 'package:get/get.dart';

import '../controllers/tea_controller.dart';

class TeaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeaController>(
      () => TeaController(),
    );
  }
}
