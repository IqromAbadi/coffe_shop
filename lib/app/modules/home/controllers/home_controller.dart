import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  final List<String> buttonText = [
    "All Coffee",
    "Milk Base",
    "Manual Brew",
    "Tea"
  ];

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}
