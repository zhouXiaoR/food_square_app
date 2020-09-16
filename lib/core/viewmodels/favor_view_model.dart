import 'package:flutter/material.dart';
import 'package:food_square_app/core/models/meal_model.dart';
import 'package:food_square_app/core/viewmodels/base_view_model.dart';

class ZZFavorViewModel extends ZZBaseMealViewModel{
  List<ZZMealModel> _favorModes = [];

  List<ZZMealModel> get favorModes => _favorModes;

  bool isFavor(ZZMealModel model) {
    return _favorModes.contains(model);
  }

  void favorAction(ZZMealModel model){
    _favorModes.add(model);
    notifyListeners();
  }

  void cancelFavorAction(ZZMealModel model) {
    _favorModes.remove(model);
    notifyListeners();
  }
  void favorOperationHandle(ZZMealModel model){
    if(isFavor(model)) {
      cancelFavorAction(model);
    } else {
      favorAction(model);
    }
  }
}
