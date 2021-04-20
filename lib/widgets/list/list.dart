import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:health_care/views/nutritionist/list-item.dart';

Widget searchList(context, QuerySnapshot qSnapshot) {
  return ListView.builder(
      itemCount: qSnapshot.documents.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListItem(
          userName: qSnapshot.documents[index].data["name"],
        );
      });
}