import 'package:get/get.dart';
import 'package:getx_fetch_data/product_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductController>(ProductController());
  }
}
