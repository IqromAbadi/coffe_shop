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
        name: "Latte",
        imageUrl: "assets/images/coffe1.png",
        price: 4.5,
      ),
      AllCoffe(
        name: "Cappuccino",
        imageUrl: "assets/images/coffe2.png",
        price: 4.0,
      ),
      AllCoffe(
        name: "Espresso",
        imageUrl: "assets/images/coffe3.png",
        price: 3.0,
      ),
      AllCoffe(
        name: "Americano",
        imageUrl: "assets/images/coffe4.png",
        price: 3.5,
      ),
    ];

    // Assign fetched products to the products list
    products.value = fetchAllCoffe;
    isLoading.value = false;
  }
}
