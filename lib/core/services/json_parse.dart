import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:food_square_app/core/models/category_model.dart';

class ZZJsonParse {
   static Future<List<ZZHomeCategoryModel>> getCategoryModels() async{
      final jsonString =  await rootBundle.loadString("assets/json/category.json");
      final result = json.decode(jsonString);
      final resultList = result["category"];
      List<ZZHomeCategoryModel> list = [];
      for (var json in resultList) {
        list.add(ZZHomeCategoryModel.fromJson(json));
      }
      return list;
    }
}