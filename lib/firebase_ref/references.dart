import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
final fireStore=FirebaseFirestore.instance;
final questionsPaperRF=fireStore.collection('questionPapers');
DocumentReference qustionRF({
  required String paperId,
required String questionID,
})=>questionsPaperRF.doc(paperId).collection("questions").doc(questionID);
Reference get firebaseStorage=>FirebaseStorage.instance.ref();


