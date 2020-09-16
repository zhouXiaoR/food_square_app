import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/category_model.dart';
import 'package:food_square_app/ui/pages/meal/meal_content.dart';
class ZZMealScreen extends StatelessWidget {
  static final  String routerName = "/meal";
  @override
  Widget build(BuildContext context) {
    final categoryModel = ModalRoute.of(context).settings.arguments as ZZHomeCategoryModel;
    return Scaffold(
      appBar: AppBar(title: Text("${categoryModel.title}"),),
      body: ZZMealContent(),
    );
  }
}
