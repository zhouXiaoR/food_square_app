import 'package:flutter/material.dart';
import 'package:food_square_app/core/viewmodels/favor_view_model.dart';
import 'package:food_square_app/ui/pages/meal/meal_cell.dart';
import 'package:food_square_app/ui/shared/theme/app_theme.dart';
import 'package:provider/provider.dart';
import '../../../core/extension/int_extension.dart';

class ZZFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ZZFavorViewModel>(
      builder: (ctx,vm,child){
        return vm.favorModes.length > 0 ? getListWidget(vm) : getEmptyWidget();
      },
    );
  }

  Widget getListWidget(ZZFavorViewModel vm){
     return  Container(
      padding: EdgeInsets.only(left: 15.px,right: 15.px,bottom: 15.px),
      child: ListView.builder(
          itemCount: vm.favorModes.length,
          itemBuilder: (ctx,index){
            return ZZMealCell(vm.favorModes[index]);
          }
      ),
    );
  }
  Widget getEmptyWidget(){
    return Center(
      child: Text("暂无收藏",style: TextStyle(fontSize: ZZAppTheme.FontSize24,color: Colors.pink),),
    );
  }
}
