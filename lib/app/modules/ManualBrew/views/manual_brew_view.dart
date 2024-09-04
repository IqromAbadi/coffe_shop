import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manual_brew_controller.dart';

class ManualBrewView extends GetView<ManualBrewController> {
  const ManualBrewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'ManualBrewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
