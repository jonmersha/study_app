import 'package:cloud_firestore/cloud_firestore.dart';
final fireStore=FirebaseFirestore.instance;
final questionsPaperRF=fireStore.collection('questionPapers');
DocumentReference qustionRF({
  required String paperId,
required String questionID,
})=>questionsPaperRF.doc(paperId).collection("questions").doc(questionID);

