import 'package:flutter/material.dart';
import 'package:shopify_app/screens/auth/screens/sign_in.dart';
import 'package:shopify_app/screens/layout/screen/layout.dart';
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
    Widget startScreen ;
    if(PreferenceService.prefs().getString('email')!=null){
      startScreen = const LayoutScreen();
    }else{
      startScreen = SignInScreen();
    }
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey:navigatorKey ,
      debugShowCheckedModeBanner: false,
      theme:AppTheme.lightTheme ,
      home:  startScreen,
    );
  }
}
