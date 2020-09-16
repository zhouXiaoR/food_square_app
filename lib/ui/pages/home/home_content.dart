import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/category_model.dart';
import 'package:food_square_app/core/services/json_parse.dart';
import 'package:food_square_app/ui/pages/home/home_cell.dart';
class ZZHomeContent extends StatefulWidget {
  @override
  _ZZHomeContentState createState() => _ZZHomeContentState();
}

class _ZZHomeContentState extends State<ZZHomeContent> {
   List<ZZHomeCategoryModel> _homeCategoryModels = [];

   @override
  void initState() {
    ZZJsonParse.getCategoryModels().then((value) {
      setState(() {
        _homeCategoryModels = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.0
          ),
          itemCount: _homeCategoryModels.length,
          itemBuilder: (ctx,index) {
            return ZZHomeCell(_homeCategoryModels[index]);
          }),
    );
  }
}