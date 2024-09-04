import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_coffe_controller.dart';

class AllCoffeView extends GetView<AllCoffeController> {
  const AllCoffeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'AllCoffeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
