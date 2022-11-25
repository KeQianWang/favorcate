import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HYMealContent extends StatelessWidget {
  const HYMealContent({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     final category = ModalRoute.of(context)?.settings.arguments as HYCategoryModel;
     return Consumer<HYMealViewModel>(
       builder: (ctx, mealVM, child) {
         final meals = mealVM.meals.where((meal) => meal.categories.contains(category.id)).toList();
         return ListView.builder(
           itemCount: meals.length,
           itemBuilder: (ctx, index) {
             return HYMealItem(meals[index]);
           }
         );
       }
     );
   }
}
