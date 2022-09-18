
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';


Reference get firebaseStorage=>FirebaseStorage.instance.ref();
class FireBaseService extends GetxService{
 Future<String?> getImage(String? imgName) async{
    if(imgName==null){
      return null;
    }
    try{
    var urlRef=  firebaseStorage
          .child("qustion_paper_images")
          .child('${imgName.toLowerCase()}.png');
    var imgUrl=await urlRef.getDownloadURL();
    return imgUrl;

    }catch(e){

    }
  }
}