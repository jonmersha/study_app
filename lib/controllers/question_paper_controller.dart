import 'package:get/get.dart';
import 'package:qaroo/service/firebase_storage_service.dart';
class QuestionPaperController extends GetxController{
  final allPaperImages = <String>[].obs;
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
    ];
    try{
      for(var img in imgName){
      String? imageUrl =  await Get.find<FireBaseStorageService>().getImage(img);
      print(imageUrl);
      allPaperImages.add(""+imageUrl!);
      }
    }catch(e){
      print(e);
    }



  }

}