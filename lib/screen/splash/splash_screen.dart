import 'package:flutter/material.dart';
import 'package:qaroo/config/themes/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: mainGradient(context)
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Image.asset(
            "assets/images/app_splash_logo.png",
            width: 150,
            height: 150,
          ),
          //Icon(Icons.arrow_forward,size: 40,color:Colors.yellow)
          ]),
        ),
      ),
    );
  }
}
