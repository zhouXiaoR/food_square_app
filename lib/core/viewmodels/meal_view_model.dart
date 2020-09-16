import 'package:food_square_app/core/services/meal_request.dart';
import 'package:food_square_app/core/viewmodels/base_view_model.dart';

class ZZMealViewModel extends ZZBaseMealViewModel {
  ZZMealViewModel() {
    ZZMealRequest.getMealModels().then((value)  {
      meals = value;
    });
  }
}