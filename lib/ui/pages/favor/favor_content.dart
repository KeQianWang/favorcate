
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HYFavorContent extends StatelessWidget {
  const HYFavorContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(
        builder: (ctx,favorVM,child) {
          if(favorVM.meals.isEmpty ){
            return const Center(
              child: Text('未收藏美食'),
            );
          }
          return ListView.builder(
              itemCount: favorVM.meals.length,
              itemBuilder:(itemctx , index){
                return HYMealItem(favorVM.meals[index]);
              }
          );
        }
    );
  }
}
