import 'package:get/get.dart';
import 'package:tejas_s_application1/controller/feeling_controller.dart';

class FeelingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeelingController());
  }
}
