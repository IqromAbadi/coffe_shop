import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tea_controller.dart';

class TeaView extends GetView<TeaController> {
  const TeaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'TeaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
