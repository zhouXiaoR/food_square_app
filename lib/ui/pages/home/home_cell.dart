import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/category_model.dart';
import 'package:food_square_app/ui/pages/meal/meal.dart';
class ZZHomeCell extends StatelessWidget {
  final ZZHomeCategoryModel model;
  ZZHomeCell(this.model);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(ZZMealScreen.routerName,arguments: this.model);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                model.tColor.withOpacity(.4),
                model.tColor.withOpacity(1.0)
              ],
            ),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Text("${model.title}"),
        ),
      ),
    );
  }
}
