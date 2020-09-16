import 'package:food_square_app/core/models/meal_model.dart';
import 'http_request.dart';

class ZZMealRequest {
   static Future<List<ZZMealModel>> getMealModels() async {
      final String url = "/meal";
      final result = await HttpRequest.request(url);
      final mealArray = result["meal"];
      final List<ZZMealModel> meals = [];
      for (var json in mealArray) {
        meals.add(ZZMealModel.fromJson(json));
      }
      return meals;
  }
}
