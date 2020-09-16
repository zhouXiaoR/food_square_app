import 'package:flutter/material.dart';
import 'package:food_square_app/ui/shared/theme/app_theme.dart';
class ZZDetailSectionHeader extends StatelessWidget {
  final String title;
  ZZDetailSectionHeader(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: double.infinity,
      color: Color.fromRGBO(0, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.arrow_drop_down,color: Colors.pink,size: 50,),
          SizedBox(width: 0,),
          Text("${title}",style: TextStyle(fontSize: ZZAppTheme.FontSize24,fontWeight: FontWeight.bold),),
        ],
      )
    );
  }
}
