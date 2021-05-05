
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truco_praca/core/app_colors.dart';
import 'package:truco_praca/pages/home_page.dart';

import '../pages/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Truco da praça',
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        brightness: Brightness.dark,
        accentColor: AppColors.white
      ),
      home: HomePage(),
    );
  }
}