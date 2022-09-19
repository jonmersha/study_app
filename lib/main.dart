import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qaroo/bindings/initial_bindings.dart';
import 'package:qaroo/controllers/theme_controller.dart';
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

    return  FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // // Check for errors
        // if (snapshot.hasError) {
        //   return SomethingWentWrong();
        // }
        //
        // // Once complete, show your application
        // if (snapshot.connectionState == ConnectionState.done) {
        //   return MyAwesomeApp();
        // }
        //
        // // Otherwise, show something whilst waiting for initialization to complete
        // return Loading();

        return  GetMaterialApp(
          theme: Get.find<ThemeController>().lightTheme,
          getPages: AppRoutes.routes(),
        );

      },
    );;



    
  }
}

/*Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(home: DataUploaderScreen(),));
}*/

