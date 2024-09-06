import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TAB BAR
  var currentIndex = 0.obs;

  final List<String> buttonText = [
    "All Coffee",
    "Milk Base",
    "Manual Brew",
    "Tea"
  ];

  void changeTabBarIndex(int index) {
    currentIndex.value = index;
  }

  //BOTTOM NAVBAR
  var currentbottomnavIndex = 0.obs;

  void changeBottomNavIndex(int index) {
    currentbottomnavIndex.value = index;
  }

  List<BottomNavigationBarItem> getBottomNavigationBarItems() {
    return [
      _bottomNavigationBarItem(
        label: 'Home',
        iconPath: "assets/icons/Home.svg",
        isSelected: currentbottomnavIndex.value == 0,
      ),
      _bottomNavigationBarItem(
        label: 'Notif',
        iconPath: "assets/icons/Fav.svg",
        isSelected: currentbottomnavIndex.value == 1,
      ),
      _bottomNavigationBarItem(
        label: 'Add',
        iconPath: "assets/icons/cart.svg",
        isSelected: currentbottomnavIndex.value == 2,
        isSpecial: true,
      ),
      _bottomNavigationBarItem(
        label: 'Cart',
        iconPath: "assets/icons/notif.svg",
        isSelected: currentbottomnavIndex.value == 3,
      ),
    ];
  }

  BottomNavigationBarItem _bottomNavigationBarItem({
    required String label,
    required String iconPath,
    required bool isSelected,
    bool isSpecial = false,
  }) {
    return BottomNavigationBarItem(
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 20,
            height: 20,
            color:
                isSelected ? const Color(0xffC67C4E) : const Color(0xffA2A2A2),
          ),
          if (isSelected)
            Positioned(
              bottom: -10,
              left: 0,
              right: 0,
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: const Color(0xffC67C4E),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
        ],
      ),
      label: label,
    );
  }
}
