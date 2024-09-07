import 'package:get/get.dart';

class DescriptionProductsController extends GetxController {
  var currentsizeIndex = 0.obs;

  final List<String> buttonsizeText = [
    "S",
    "M",
    "L",
  ];

  void changeSizeIndex(int index) {
    currentsizeIndex.value = index;
  }
}
