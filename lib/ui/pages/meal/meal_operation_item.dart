import 'package:flutter/material.dart';
class ZZOperationItem extends StatelessWidget {
  String title;
  IconData icon;
  bool selected;

  ZZOperationItem({this.title,this.icon,this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 3,right: 3,top: 3,bottom: 3),
      child: Row(
        children: <Widget>[
          selected ? Icon(icon,color: Colors.red,) : Icon(icon),
          SizedBox(width: 3,),
          Text("${title}",style: TextStyle(color: selected ? Colors.red : Colors.black),)
        ],
      ),
    );
  }
}


