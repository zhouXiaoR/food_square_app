import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/meal_model.dart';
import 'package:food_square_app/core/viewmodels/favor_view_model.dart';
import 'package:food_square_app/ui/pages/detail/detail_content.dart';
import 'package:provider/provider.dart';

class ZZMealDetalScreen extends StatelessWidget {
  static final String routeName = "/meal_detail";
  @override
  Widget build(BuildContext context) {
    final ZZMealModel model = ModalRoute.of(context).settings.arguments as ZZMealModel;
    return Scaffold(
      appBar: AppBar(title: Text("${model.title}"),),
      body:  ZZMealDetalContent(),
      floatingActionButton: Consumer<ZZFavorViewModel>(
          builder: (ctx,favorVM,child) {
            final isFavor = favorVM.isFavor(model);
            final iconData = isFavor ? Icons.star : Icons.star_border;
            final iconColor = isFavor ? Colors.pink : Colors.white;
            return FloatingActionButton(
              child: Icon(iconData,size: 40,color: iconColor,),
              backgroundColor: Colors.black26,
              onPressed: (){
                favorVM.favorOperationHandle(model);
              },
            );
          }
      )
    );
  }
}
