import 'package:dio_project/utils/http/network_manager.dart';
import 'package:get/instance_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
