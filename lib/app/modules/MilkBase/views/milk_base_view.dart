import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/milk_base_controller.dart';

class MilkBaseView extends GetView<MilkBaseController> {
  const MilkBaseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'MilkBaseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
