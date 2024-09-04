import 'package:coffe/app/modules/cart/views/cart_view.dart';
import 'package:coffe/app/modules/favorite/views/favorite_view.dart';
import 'package:coffe/app/modules/notification/views/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(405),
          child: AppBar(
            flexibleSpace: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 290,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff111111),
                            Color(0xff313131),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.0, 2.0],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 50,
                          horizontal: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffA2A2A2),
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Bilzen, Tanjungbalai",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 259,
                                  height: 52,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide.none,
                                      ),
                                      hintText: "Search Coffee",
                                      hintStyle: const TextStyle(
                                        color: Color(0xffA2A2A2),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.search,
                                        color: Color(0xffA2A2A2),
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xff2A2A2A),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 52,
                                  height: 52,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffC67C4E),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/filter.svg",
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 210,
                  left: 20,
                  right: 20,
                  child: Stack(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/Banner.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 26,
                              decoration: BoxDecoration(
                                color: const Color(0xffED5151),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Promo',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 250,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/glass.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Buy One Get\nOne FREE",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 380,
                  left: 2,
                  right: 2,
                  child: Obx(
                    () => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          controller.buttonText.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: ElevatedButton(
                              onPressed: () {
                                controller.changeBottomNavIndex(index);
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(150, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                backgroundColor:
                                    controller.currentIndex.value == index
                                        ? const Color(0xffC67C4E)
                                        : Colors.white,
                                side: BorderSide(
                                  color: controller.currentIndex.value == index
                                      ? const Color(0xffC67C4E)
                                      : Colors.white,
                                ),
                              ),
                              child: Text(
                                controller.buttonText[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      controller.currentIndex.value == index
                                          ? FontWeight.w700
                                          : FontWeight.w500,
                                  color: controller.currentIndex.value == index
                                      ? Colors.white
                                      : const Color(0xffC67C4E),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
        ),
        body: Obx(
          () => IndexedStack(
            index: controller.currentbottomnavIndex.value,
            children: const [
              Column(
                children: [
                  Text("INI HOME"),
                ],
              ),
              FavoriteView(),
              CartView(),
              NotificationView(),
            ],
          ),
        ),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.currentbottomnavIndex.value,
            onTap: controller.changeBottomNavIndex,
            items: controller.getBottomNavigationBarItems(),
          );
        }),
      ),
    );
  }
}
