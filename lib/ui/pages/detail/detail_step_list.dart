import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/meal_model.dart';
import '../../../core/extension/int_extension.dart';
class ZZDetailStepList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ZZMealModel model = ModalRoute.of(context).settings.arguments as ZZMealModel;
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 30),
      width: MediaQuery.of(context).size.width - 30.px,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pink,width: 2),
        borderRadius: BorderRadius.circular(10.px)
    ),
      child: ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          itemCount: model.steps.length,
          itemBuilder: (ctx,index){
          return Container(
            padding: EdgeInsets.only(top: 10,bottom: 10),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Text("#${index}"),
                  backgroundColor: Colors.yellow,
                ),
                SizedBox(width: 10,),
                Expanded(child: Text("${model.steps[index]}",style: TextStyle(fontSize: 16),))
              ],
            )
            );
          },
          separatorBuilder: (ctx,index) {
            return Divider(height: 1,indent: 20,endIndent: 20,color: Colors.black26,);
          },
      )
    );
  }
}
