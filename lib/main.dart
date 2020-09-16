import 'package:flutter/material.dart';
import 'package:food_square_app/core/extension/screen_fit.dart';
import 'package:food_square_app/core/router/router.dart';
import 'package:food_square_app/core/viewmodels/favor_view_model.dart';
import 'package:food_square_app/core/viewmodels/filter_view_model.dart';
import 'package:food_square_app/core/viewmodels/meal_view_model.dart';
import 'package:food_square_app/ui/shared/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (ctx)=>ZZFilterViewModel(),),

    ChangeNotifierProxyProvider<ZZFilterViewModel,ZZFavorViewModel> (
      create: (ctx)=>ZZFavorViewModel(),
      update: (ctx,filterVM,favorVM) {
        favorVM.bindFilterVM(filterVM);
        return favorVM;
      },
    ),

    //ChangeNotifierProvider(create: (ctx)=>ZZMealViewModel(),),
    ChangeNotifierProxyProvider<ZZFilterViewModel,ZZMealViewModel>(
        create: (ctx)=>ZZMealViewModel(),
        update: (ctx,filterVM,mealVM) {
          mealVM.bindFilterVM(filterVM);
        return mealVM;
        }
    )
  ],
  child: MyApp(),
)
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ZZSizefit.initialize();
    return MaterialApp(
      theme: ZZAppTheme.lightTheme,
      darkTheme: ZZAppTheme.darkTheme,
      initialRoute: ZZRouter.initialRoute,
      routes: ZZRouter.routers,
      onUnknownRoute: ZZRouter.onUnknownRoute,
      onGenerateRoute: ZZRouter.onGenerateRoute,
    );
  }
}
