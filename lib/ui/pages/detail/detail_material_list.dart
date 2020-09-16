import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/meal_model.dart';
import '../../../core/extension/int_extension.dart';

class ZZDetailMaterialList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final  ZZMealModel model = ModalRoute.of(context).settings.arguments as ZZMealModel;
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 30),
      width: MediaQuery.of(context).size.width - 30.px,
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0),
        border: Border.all(color: Colors.black26,width: 2),
        borderRadius: BorderRadius.circular(10.px)
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemCount: model.ingredients.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (ctx,index) {
            return Container(
              height: 60,
              child: Card(
                color: Colors.amberAccent,
                elevation: 5,
                margin: EdgeInsets.only(top: 5,bottom: 10),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(model.ingredients[index]),
                )
              ),
            );
          }
      ),
    );
  }
}
