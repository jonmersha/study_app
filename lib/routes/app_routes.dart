import 'package:get/get.dart';
import 'package:qaroo/controllers/question_paper_controller.dart';
import 'package:qaroo/screen/home/home_screen.dart';
import 'package:qaroo/screen/introduction/introduction.dart';
import 'package:qaroo/screen/splash/splash_screen.dart';

class AppRoutes{
static List<GetPage> routes()=>
    [
      GetPage(name: "/", page:()=>SplashScreen()),
      GetPage(name: "/introduction", page:()=>AppIntroductionScreen()),
      GetPage(name: "/home", page:()=>HomeScreen(),binding: BindingsBuilder((){
        Get.put(QuestionPaperController());
      })),
    ];
}