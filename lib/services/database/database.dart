import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  getNutritionistList()async{
    return await Firestore.instance.collection('users').where("role_id", isEqualTo: 2).getDocuments();
  }
  getUserByusername(String username) async{
    return await Firestore.instance.collection('users').where("name", isEqualTo: username).where("role_id", isEqualTo: 2).getDocuments();
  }
  uploadUserInfo(userMap){
    Firestore.instance.collection("users").add(userMap);
  }
}