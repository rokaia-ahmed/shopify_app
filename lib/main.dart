import 'package:flutter/material.dart';
import 'package:shopify_app/screens/auth/screens/sign_in.dart';
import 'core/utilites/theme_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme ,
      home:  const SignInScreen(),
    );
  }
}
