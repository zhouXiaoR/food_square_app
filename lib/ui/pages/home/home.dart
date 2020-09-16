import 'package:flutter/material.dart';
import 'package:food_square_app/ui/pages/home/home_content.dart';

class ZZHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食广场"),
        leading: GestureDetector(
          onTap: (){
            Scaffold.of(context).openDrawer();
          },
          child: Icon(
            Icons.settings,
            size: 30,
            color: Colors.white,),
        )
      ),
      body: ZZHomeContent(),
    );
  }
}