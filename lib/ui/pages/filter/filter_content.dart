import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/filter_model.dart';
import 'package:food_square_app/core/services/filter_request.dart';
import 'package:food_square_app/core/viewmodels/filter_view_model.dart';
import 'package:provider/provider.dart';
class ZZFilterContent extends StatelessWidget {
  final models = ZZFilterRequest.getFilterModels();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 84,
          title:Text( "展示你的选择"),
        ),
        Consumer<ZZFilterViewModel>(
          builder: (ctx,filterVM,Child) {
            return SliverList(
                delegate: SliverChildBuilderDelegate(
                        (ctx,index){
                      ZZFilterModel model = models[index];
                      return buildItem(model.title, model.subtitle, getSwitchValue(index, filterVM), (value){
                           updateSwitchValue(index, filterVM, value);
                      });
                    },
                    childCount: models.length
                )
            );
          }
        )
      ],
    );
  }

  bool getSwitchValue(int index,ZZFilterViewModel vm) {
    switch(index) {
      case 0:
        return vm.isWuGuDanBai;
      case 1:
        return vm.isContainRuTang;
      case 2:
        return vm.isNormalVegetable;
      case 3:
        return vm.isSuperVegetable;
    }
}

  void  updateSwitchValue(int index,ZZFilterViewModel vm,bool value) {
    switch(index) {
      case 0:
        vm.isWuGuDanBai = value;
        break;
      case 1:
        vm.isContainRuTang = value;
        break;
      case 2:
        vm.isNormalVegetable = value;
        break;
      case 3:
        vm.isSuperVegetable = value;
        break;
    }
  }

  Widget buildItem(String title,String subtitle,bool selected, Function fun) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(value: selected, onChanged: fun,),
    );
  }
}