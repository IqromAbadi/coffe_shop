import 'package:coffe/app/data/allcoffe.dart';
import 'package:get/get.dart';

class AllCoffeController extends GetxController {
  // List of products
  var products = <AllCoffe>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAllCoffe();
  }

  // Simulate fetching data from assets
  void fetchAllCoffe() async {
    await Future.delayed(
        const Duration(seconds: 2)); // Simulate a network delay
    var fetchAllCoffe = [
      AllCoffe(
        name: "Mocha Latte",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec purus. Nunc sed odio. Sed nec odio. Ut sit amet purus. Sed nec odio. Ut sit amet purus. Sed nec odio. Ut sit amet purus.",
        imageUrl: "assets/images/coffe1.png",
        price: "20.000",
        rate: "4.5",
      ),
      AllCoffe(
        name: "Flat White",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec purus. Nunc sed odio. Sed nec odio. Ut sit amet purus. Sed nec odio. Ut sit amet purus. Sed nec odio. Ut sit amet purus.",
        imageUrl: "assets/images/coffe2.png",
        price: "21.000",
        rate: "4.5",
      ),
      AllCoffe(
        name: "Capuccino",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec purus. Nunc sed odio. Sed nec odio. Ut sit amet purus. Sed nec odio. Ut sit amet purus. Sed nec odio. Ut sit amet purus.",
        imageUrl: "assets/images/coffe3.png",
        price: "20.000",
        rate: "4.5",
      ),
      AllCoffe(
        name: "Macchiato",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec purus. Nunc sed odio. Sed nec odio. Ut sit amet purus. Sed nec odio. Ut sit amet purus. Sed nec odio. Ut sit amet purus.",
        imageUrl: "assets/images/coffe4.png",
        price: "20.000",
        rate: "4.5",
      ),
    ];

    // Assign fetched products to the products list
    products.value = fetchAllCoffe;
    isLoading.value = false;
  }
}
