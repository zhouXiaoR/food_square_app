import 'package:flutter/material.dart';
import 'package:food_square_app/ui/pages/favor/favor_content.dart';
class ZZFavorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("收藏"),),
      body: ZZFavorContent(),
    );
  }
}
