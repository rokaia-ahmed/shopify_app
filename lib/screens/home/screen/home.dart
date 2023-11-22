import 'package:flutter/material.dart';
import 'package:shopify_app/core/srevices/preference_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:Drawer(
        width: 200,
        child:Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ListTile(
              onTap:(){
                print(PreferenceService.prefs().getString('email'));
                PreferenceService.prefs().remove('email');
              } ,
              title:Text('Log Out',
              style: Theme.of(context).textTheme.headlineMedium,
              ) ,
            )
          ],
        ) ,
      ) ,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
       backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
