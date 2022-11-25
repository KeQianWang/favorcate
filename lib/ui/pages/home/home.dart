import 'package:favorcate/generated/l10n.dart';
import 'package:favorcate/ui/pages/home/home_content.dart';
import 'package:favorcate/ui/pages/home/home_drawer.dart';
import 'package:flutter/material.dart';

class HYHomeScreen extends StatelessWidget {
  const HYHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).name),
      ),
      body:HYHomeContent(),
      drawer: HYHomeDrawer(),
    );
  }
}
