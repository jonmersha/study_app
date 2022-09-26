import 'package:cached_network_image/cached_network_image.dart';
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
                  child: CachedNetworkImage(
                    imageUrl: _questionPaperController.allPapers[index].imageUrl!,
                    placeholder: (context, url)=>Container(
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(),

                    ),
                    errorWidget: (context,url,error)=>Image.asset("assets/images/app_splash_logo.png"),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount:_questionPaperController.allPapers.length
         ),
      ),
    );
  }
}



// image: NetworkImage(
// _questionPaperController.allPaperImages[index]
// ),