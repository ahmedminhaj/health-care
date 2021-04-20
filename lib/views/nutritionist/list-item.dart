import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String userName;
  ListItem({this.userName});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
      child: Row(
        children: [
          Text(
            userName,
            style: TextStyle(
              color: Colors.pink[900],
              fontSize: 20,
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: Colors.pink[900],
                borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
