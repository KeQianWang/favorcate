import 'package:favorcate/core/services/meal_json_pars.dart';
import 'package:favorcate/core/viewmodel/base_view_model.dart';

class HYMealViewModel extends BaseMealViewModel{
  HYMealViewModel(){
    MealJsonParse.getMealData().then((res){
      meals= res;
    });
  }
}