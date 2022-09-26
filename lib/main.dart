import 'package:flutter/material.dart';
import 'package:qaroo/bindings/initial_bindings.dart';
import 'package:qaroo/controllers/theme_controller.dart';
import 'package:get/get.dart';
import 'routes/app_routes.dart';

 main()  {
   //Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(MayApp());
}
class MayApp extends StatelessWidget {
  const MayApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return
      GetMaterialApp(
          theme: Get.find<ThemeController>().lightTheme,
          getPages: AppRoutes.routes(),
        );
  }
}

class ErroPage extends StatelessWidget {
   final String snapthor;
  const ErroPage({required this.snapthor,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Text(snapthor),
          ),
        ),
      ),
    );
  }
}

/*Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(home: DataUploaderScreen(),));
}*/

