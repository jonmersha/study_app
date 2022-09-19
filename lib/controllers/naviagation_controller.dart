import 'package:get/get.dart';

class NavigationController extends GetxController{
  @override
  void onReady() {
    super.onReady();
  }
  static void nav(String pathToPage){
    Get.off("/$pathToPage");
  }
}