import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/category_model.dart';
import 'package:food_square_app/core/models/meal_model.dart';
import 'package:food_square_app/core/viewmodels/meal_view_model.dart';
import 'package:food_square_app/ui/pages/detail/detail.dart';
import 'package:food_square_app/ui/pages/meal/meal_cell.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class ZZMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryModel = ModalRoute.of(context).settings.arguments as ZZHomeCategoryModel;
    return Selector<ZZMealViewModel,List<ZZMealModel>>(
        selector: (ctx,mealVM){
          return mealVM.meals.where((element){
            return element.categories.contains(categoryModel.id);
          }).toList();
        },
        shouldRebuild: (prev,next) => !ListEquality().equals(prev, next),
        builder: (ctx,meals,child) {
          return meals.length <= 0 ? Center(child: Text("暂无美食"),) : Padding(
            padding: const EdgeInsets.only(bottom: 15,left: 15,right: 15),
            child: ListView.builder(
              itemBuilder: (ctx,index){
                return GestureDetector(
                  child: ZZMealCell(meals[index]),
                  onTap: (){
                    Navigator.of(context).pushNamed(ZZMealDetalScreen.routeName,arguments: meals[index]);
                  },
                );
              },
              itemCount: meals.length,
            ),
          );
        },
    );
  }

  Widget loadingView() {
    return CircularProgressIndicator(
        backgroundColor: Colors.black,
        strokeWidth: 5,
    );
  }
}