import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';

class HYHomeCategoryItem extends StatelessWidget {
  final HYCategoryModel _category;
  HYHomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;
    return GestureDetector(
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12.px),
              gradient: LinearGradient(
                  colors: [
                    bgColor.withOpacity(.5),
                    bgColor
                  ]
              )
          ),
          child:Text(
            _category.title,
            style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),
          ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(HYMealScreen.routeName,arguments: _category);
      },
    );
  }
}
