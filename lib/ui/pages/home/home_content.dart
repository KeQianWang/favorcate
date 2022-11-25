import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:favorcate/ui/pages/home/home_category_item.dart';
import 'package:flutter/material.dart';

class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder( // todo FutureBuilder 替代初始化请求
        future: JsonParse.getCategoryData(),
        builder: (ctx,snapshot){
          if(!snapshot.hasData)return Center(child: CircularProgressIndicator());
          if (snapshot.error != null) return Center(child: Text("请求失败"),);
          final _categories = snapshot.data;
          return GridView.builder(
              padding: EdgeInsets.all(20.px),
              itemCount: _categories?.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.px,
                  mainAxisSpacing: 20.px,
                  childAspectRatio: 1.5
              ),
              itemBuilder: (ctx,index){
                return HYHomeCategoryItem(_categories![index]);
              }
          );
        }
    );
  }
}
