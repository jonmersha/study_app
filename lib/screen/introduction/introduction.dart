import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:qaroo/config/themes/app_colors.dart';
import '../../widgets/app_circle_button.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: mainGradient(context)
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.2,
        ),
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children:  [
          Icon(Icons.star, size: 65),
          SizedBox(
            height: 40,
          ),
          Text(
            "This is the study app,          "
            "You can use it as you want. "
            "if you understand how it works, "
                "you would be able to scale it. "
                "With this you will master firebase backend and flutter front end",
              textAlign: TextAlign.center,
            style: TextStyle(
              color: onSurfaceTextColor,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 40,),
          AppCircleButton(
              color: Colors.transparent,
              onTap:() => Get.toNamed("/home") ,
              child:  Icon(
                Icons.arrow_forward,
                size: 35,
              )
          ),

          // Icon(Icons.arrow_forward,size: 40,color:Colors.yellow)
        ]),
      ),
    );
  }
 // gotoHome() async => Get.off("/home");
}
