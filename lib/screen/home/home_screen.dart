import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qaroo/controllers/question_paper_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
      body: Obx(()=>
         ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: FadeInImage(
                    image: NetworkImage(
                        _questionPaperController.allPaperImages[index]
                    ),
                    placeholder: AssetImage("assets/images/app_splash_logo.png"),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount:_questionPaperController.allPaperImages.length

         ),
      ),
    );
  }
}
