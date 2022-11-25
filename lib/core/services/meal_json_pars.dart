import 'dart:convert';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/services.dart';

class MealJsonParse {
  static Future<List<HYMealModel>> getMealData() async {
    // 1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/meal.json");
    // 2.将jsonString转成Map/List
    final result =  json.decode(jsonString);

    // 3.将Map中的内容转成一个个对象
    final mealArray = result["meal"];
    List<HYMealModel> meals = [];
    for (var json in mealArray) {
      meals.add(HYMealModel.fromJson(json));
    }
    return meals;
  }
}