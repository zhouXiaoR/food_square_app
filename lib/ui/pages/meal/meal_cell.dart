import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/meal_model.dart';
import 'package:food_square_app/core/viewmodels/favor_view_model.dart';
import 'package:food_square_app/ui/pages/detail/detail.dart';
import 'package:food_square_app/ui/pages/meal/meal_operation_item.dart';
import 'package:provider/provider.dart';
import '../../../core/extension/int_extension.dart';
class ZZMealCell extends StatelessWidget {
  final  ZZMealModel mealModel;
  ZZMealCell(this.mealModel);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.px,
      margin: EdgeInsets.only(top: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(ZZMealDetalScreen.routeName,arguments: mealModel);
            },
            child: Stack(
              children: <Widget>[
               ClipRRect(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(8),
                   topRight: Radius.circular(8),
                 ),
                 child:  Image.network(mealModel.imageUrl),
               ),
                Positioned(
                    left: 30,
                    right: 30,
                    bottom: 30,
                    height: 40,
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("${mealModel.title}",style: TextStyle(fontSize: 16,color: Colors.white),),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(8)
                      ),
                    )
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.px),
            height: 60.px,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ZZOperationItem(title: "${mealModel.duration}分钟", icon: Icons.timer,),
                ZZOperationItem(title: "${complexes[mealModel.complexity]}", icon: Icons.fastfood,),
                Consumer<ZZFavorViewModel> (
                  builder: (ctx, vm,child) {
                    final isFavor = vm.isFavor(mealModel);
                    final favorDesc = isFavor ? "已收藏" : "未收藏";
                    final icon = isFavor ? Icons.star :  Icons.star_border;
                    return GestureDetector(
                        child: ZZOperationItem(title: "${favorDesc}", icon: icon, selected: isFavor,),
                      onTap: (){
                          vm.favorOperationHandle(mealModel);
                      },
                    );
                  },
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
