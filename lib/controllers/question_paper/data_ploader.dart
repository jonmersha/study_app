import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:qaroo/firebase_ref/loading_status.dart';
import 'package:qaroo/firebase_ref/references.dart';
import 'dart:convert';

import 'package:qaroo/models/question_paper_model.dart';
class DataUploader extends GetxController{
  @override 
  void onReady(){
    uploadData();
    super.onReady();

  }
  final loadingStatus=LoadingStatus.loading.obs;


 Future<void> uploadData() async{
   loadingStatus.value=LoadingStatus.loading;
    final fireStore=FirebaseFirestore.instance;
    final manifestContent=await DefaultAssetBundle.of(Get.context!)
    .loadString("AssetManifest.json");
  final Map<String,dynamic> manifestMap=json.decode(manifestContent);
  final papersInAsset=manifestMap.keys.where((path) => path.startsWith("assets/DB/papers") && path.contains(".json"))
  .toList();
  // print(papersInAsset);
  List<QuestionPaperModel> questionPaper=[];
    var batch=fireStore.batch();
    for(var paper in papersInAsset){
    String stringPaperContent = await rootBundle.loadString(paper);
    questionPaper
    .add(QuestionPaperModel.fromJson(json.decode(stringPaperContent)));

  }

for(var paper in questionPaper){
  batch.set(questionsPaperRF.doc(paper.id), {
    "title":paper.title,
    "image_url":paper.imageUrl,
    "description":paper.description,
    "time_secondes":paper.timeSeconds,
    "question_count":paper.questions==null?0:paper.questions!.length,
    });
  for(var question in paper.questions!){
    final questionPath=qustionRF(paperId:paper.id ,questionID:question.id );
    batch.set(
      questionPath,{
        "question":question.question, "correct_answer":question.correctAnswer,
    }
    );
    for(var answer in question.answers){
      batch.set(questionPath.collection("answers").doc(answer.identifier),{
        "identifier":answer.identifier,
        "answer":answer.answer
      });
    }

  }

}
await batch.commit();
loadingStatus.value=LoadingStatus.completed;
  }
}