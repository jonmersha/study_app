import 'package:get/get.dart';
import 'package:qaroo/controllers/auth_controller.dart';
import 'package:qaroo/controllers/theme_controller.dart';

class InitialBaindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(),permanent: true);
  }
}