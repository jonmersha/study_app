import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qaroo/controllers/question_paper/data_ploader.dart';
import 'package:qaroo/firebase_ref/loading_status.dart';


class DataUploaderScreen extends StatelessWidget {

DataUploaderScreen({Key? key}) : super(key: key);
DataUploader controller=Get.put(DataUploader());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child:Obx(()=>Text(controller.loadingStatus.value==LoadingStatus.completed?"Upload Completed":"Uploading")),
      ),
    );
    
  }
}