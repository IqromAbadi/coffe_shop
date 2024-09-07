import 'package:coffe/app/modules/AllCoffe/controllers/all_coffe_controller.dart';
import 'package:coffe/app/modules/description_products/controllers/description_products_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(AllCoffeController());
  Get.put(DescriptionProductsController());
  runApp(
    GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
