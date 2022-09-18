import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qaroo/bindings/initial_bindings.dart';
import 'package:qaroo/config/themes/app_light_themes.dart';
import 'package:qaroo/controllers/data_uploader_scren.dart';
import 'package:qaroo/controllers/theme_controller.dart';
import 'package:qaroo/screen/introduction/introduction.dart';
import 'package:qaroo/screen/splash/splash_screen.dart';
import 'config/themes/app_dark_themes.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

import 'routes/app_routes.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  InitialBaindings().dependencies();
  runApp(MayApp());
}
class MayApp extends StatelessWidget {
  const MayApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      theme: Get.find<ThemeController>().lightTheme,
      getPages: AppRoutes.routes(),
    );
    
  }
}

/*Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(home: DataUploaderScreen(),));
}*/

