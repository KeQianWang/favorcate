
import 'package:favorcate/core/extension/int_extension.dart';
import 'package:flutter/material.dart';

import '../filter/filter.dart';

class HYHomeDrawer extends StatelessWidget {
  const HYHomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.px,
      child: Drawer(
        child: Column(
          children:<Widget> [
            buildHeaderView(),
            buildListTile(Icon(Icons.restaurant), "进餐", () {
              Navigator.of(context).pop();
            }),
            buildListTile(Icon(Icons.settings), "过滤", () {
              Navigator.of(context).pushNamed(HYFilterScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }
  Widget buildHeaderView(){
    return Container(
      width:double.infinity,
      height: 120.px,
      color: Colors.orange,
      margin: EdgeInsets.only(bottom: 20.px),
      alignment: Alignment(0 , 0.5),
      child: Text("开始动手", style: TextStyle(fontSize:25.px)),
    );
  }

  Widget buildListTile( Widget icon, String title, VoidCallback handler) {
    return ListTile(
      leading: icon,
      title: Text(title, style: TextStyle(fontSize:25.px)),
      onTap: handler,
    );
  }
}
