import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme{

 static ThemeData lightTheme =ThemeData(
    textTheme:const TextTheme(
      headlineLarge:TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ) ,
    ) ,
  );
}