import 'package:flutter/material.dart';
import 'package:food_square_app/ui/pages/filter/filter_content.dart';
class ZZFilterScreen extends StatelessWidget {
  static final routerName = "/filter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZZFilterContent(),
    );
  }
}
