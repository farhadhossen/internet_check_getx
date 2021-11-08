import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:internet_check_getx/app/modules/network/controllers/network_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  final NetworkController _networkController = Get.find<NetworkController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx (()=>Text(
          _networkController.connectionStatus.value == 1?
              "Wifi Connected":
          (_networkController.connectionStatus == 2?
          "Mobile Network":
          "No Connection"),
        ),
        ),
      ),
    );
  }
}
