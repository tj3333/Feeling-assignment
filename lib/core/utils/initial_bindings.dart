import 'package:tejas_s_application1/api/api_service.dart';
import 'package:tejas_s_application1/core/app_export.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(FeelingsApiService.create());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
