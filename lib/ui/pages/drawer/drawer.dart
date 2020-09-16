import 'package:flutter/material.dart';
import 'package:food_square_app/ui/pages/filter/filter.dart';
import 'package:food_square_app/ui/pages/meal/meal_operation_item.dart';
import 'package:food_square_app/ui/shared/theme/app_theme.dart';
import '../../../core/extension/int_extension.dart';
class ZZDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        getHeader(),
        getList(context),
      ],
    );
  }

  Widget getHeader(){
    return Container(
      height: 200.px,
      padding: EdgeInsets.only(bottom: 20.px),
      alignment: Alignment.bottomCenter,
      color: Colors.pink,
      width: double.infinity,
      child: Text("开始动手",style: TextStyle(fontSize: ZZAppTheme.FontSize24,color: Colors.white,fontWeight: FontWeight.bold),)
    );
  }

  Widget getList(BuildContext ctx){
    return SingleChildScrollView(
      child:Column(
        children: <Widget>[
          SizedBox(height: 30,),
          menuItem("进餐", Icons.airline_seat_flat, (){
            Scaffold.of(ctx).openEndDrawer();
          }),
          menuItem("过滤", Icons.filter, (){
              Scaffold.of(ctx).openEndDrawer();
              Navigator.of(ctx).pushNamed(ZZFilterScreen.routerName);
          })
        ],
      )
    );
  }

  Widget menuItem(String title,IconData data, Function fun){
    return Container(
      height: 80,
      padding: EdgeInsets.only(left: 30.px),
      child: GestureDetector(
        onTap: fun,
        child: ZZOperationItem(
          title: title,
          icon: data,
        ),
      ),
    );
  }
}
