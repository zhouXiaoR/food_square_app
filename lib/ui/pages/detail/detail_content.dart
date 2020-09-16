import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/meal_model.dart';
import 'package:food_square_app/ui/pages/detail/detail_material_list.dart';
import 'package:food_square_app/ui/pages/detail/detail_section_header.dart';
import 'package:food_square_app/ui/pages/detail/detail_step_list.dart';
class ZZMealDetalContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ZZMealModel meal = ModalRoute.of(context).settings.arguments as ZZMealModel;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(meal.imageUrl,width: double.infinity,),
            ZZDetailSectionHeader("制作材料"),
            ZZDetailMaterialList(),
            ZZDetailSectionHeader("制作步骤"),
            ZZDetailStepList(),
          ],
        ),
      ),
    );
  }
}
