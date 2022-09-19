import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:qaroo/controllers/auth_controller.dart';
import 'package:qaroo/controllers/theme_controller.dart';
import 'package:qaroo/service/firebase_storage_service.dart';

class InitialBaindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(FireBaseStorageService());
    Get.put(AuthController(),permanent: true);
    Firebase.initializeApp();
  }
}