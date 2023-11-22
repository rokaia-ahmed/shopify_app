import 'package:flutter/material.dart';
import 'package:shopify_app/screens/auth/screens/sign_in.dart';
import 'core/router/router.dart';
import 'core/srevices/preference_service.dart';
import 'core/utilites/theme_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey:navigatorKey ,
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme ,
      home:   SignInScreen(),
    );
  }
}
