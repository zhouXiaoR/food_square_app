import 'package:flutter/cupertino.dart';
import 'package:food_square_app/core/models/meal_model.dart';
import 'package:food_square_app/core/viewmodels/filter_view_model.dart';

class ZZBaseMealViewModel  extends ChangeNotifier{
   List<ZZMealModel> _meals = [];
   ZZFilterViewModel _filterVM;

   List<ZZMealModel> get meals {
     return _meals.where((element) {
       if(_filterVM.isWuGuDanBai == true && element.isGlutenFree == false) return false;
       if(_filterVM.isContainRuTang == true && element.isLactoseFree == false) return false;
       if(_filterVM.isNormalVegetable == true && element.isVegetarian == false) return false;
       if(_filterVM.isSuperVegetable == true && element.isVegan == false) return false;
       return true;
     }).toList();
   }

   void bindFilterVM(ZZFilterViewModel vm){
     _filterVM = vm;
   }

  set meals(List<ZZMealModel> value) {
    _meals = value;
    notifyListeners();
  }
}