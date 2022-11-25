import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import '../../ui/pages/main/main.dart';

class HYRouter {
  static  String initialRoute = HYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
    HYMealScreen.routeName: (ctx) => HYMealScreen(),
    HYDetailScreen.routeName: (ctx) => HYDetailScreen(),
  };

  // 自己扩展
  static  RouteFactory generateRoute = (settings) {
    if(settings.name == HYFilterScreen.routeName){
      return MaterialPageRoute(
          builder: (ctx){
            return HYFilterScreen();
          },
          fullscreenDialog: true
      );
    }
  };

  static  RouteFactory unknownRoute = (settings) {
    return null;
  };
}