import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  getNutritionistList()async{
    return await FirebaseFirestore.instance.collection('users').where("role_id", isEqualTo: 2).get();
  }
  getUserByusername(String username) async{
    return await FirebaseFirestore.instance.collection('users').where("name", isEqualTo: username).where("role_id", isEqualTo: 2).get();
  }
  uploadUserInfo(userMap){
    FirebaseFirestore.instance.collection("users").add(userMap);
  }
}