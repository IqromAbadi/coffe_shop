import 'package:get/get.dart';

import '../controllers/description_products_controller.dart';

class DescriptionProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DescriptionProductsController>(
      () => DescriptionProductsController(),
    );
  }
}
