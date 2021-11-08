import 'package:get/get.dart';
import 'package:internet_check_getx/app/modules/network/controllers/network_controller.dart';


class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<NetworkController>(
            () => NetworkController(),
    );
  }

}