import 'package:flutter/material.dart';
import 'package:food_square_app/ui/pages/detail/detail.dart';
import 'package:food_square_app/ui/pages/filter/filter.dart';
import 'package:food_square_app/ui/pages/main/main.dart';
import 'package:food_square_app/ui/pages/meal/meal.dart';

class ZZRouter {
  static final initialRoute = ZZMainScreen.routerName;

  static final Map<String,WidgetBuilder> routers = {
    ZZMainScreen.routerName:(ctx)=>ZZMainScreen(),
    ZZMealScreen.routerName:(ctx)=>ZZMealScreen(),
    ZZMealDetalScreen.routeName:(ctx)=>ZZMealDetalScreen(),
  };

  static final RouteFactory onUnknownRoute = (settings) {
    return null;
  };

  static final RouteFactory onGenerateRoute = (settings) {
    // 未注册的存在的路由
    if(settings.name == ZZFilterScreen.routerName) {
      return MaterialPageRoute(
          fullscreenDialog: true,
          builder: (ctx){
           return ZZFilterScreen();
        }
      );
    }
    return null;
  };
}