import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/ui/pages/meal/meal_content.dart';
import 'package:flutter/material.dart';

class HYMealScreen extends StatelessWidget {
  const HYMealScreen({Key? key}) : super(key: key);
  static const String routeName = '/meal';
  @override
  Widget build(BuildContext context) {
    // 获取参数
    final category = ModalRoute.of(context)?.settings.arguments as HYCategoryModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: HYMealContent(),
    );
  }
}
