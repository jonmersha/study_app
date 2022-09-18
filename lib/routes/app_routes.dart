import 'package:get/get.dart';
import 'package:qaroo/screen/introduction/introduction.dart';
import 'package:qaroo/screen/splash/splash_screen.dart';

class AppRoutes{
static List<GetPage> routes()=>
    [
      GetPage(name: "/", page:()=>SplashScreen()),
      GetPage(name: "/introduction", page:()=>AppIntroductionScreen()),
    ];
}