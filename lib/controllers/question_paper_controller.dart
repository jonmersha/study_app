import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:qaroo/firebase_ref/references.dart';
import 'package:qaroo/models/question_paper_model.dart';
import 'package:qaroo/service/firebase_storage_service.dart';
class QuestionPaperController extends GetxController{
  final allPaperImages = <String>[].obs;
  final allPapers=<QuestionPaperModel>[].obs;
  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName=[
      "biology",
      "chemistry",
      "physics",
      "maths",
      "logo"
    ];
    try{
      QuerySnapshot<Map<String,dynamic>> data=await questionsPaperRF.get();


     //final paperList=data.docs.map((e) => Ques);
      // print(data.docs.toList());
      // final paperList =  data.docs
      //     .map((paper) => QuestionPaperModel.fromSnapshot(paper))
      //     .toList( );
      // allPapers.assignAll(paperList);
      //print("Added To List");

      // for(var paper in paperList){
      // String? imageUrl =  await Get.find<FireBaseStorageService>().getImage(paper.title);
      // paper.imageUrl=imageUrl;
      //
     // }
      //allPapers.assignAll(paperList);
     // print(allPapers.length);



    }catch(e){
      print("Error " + e.toString());
    }
  }

}