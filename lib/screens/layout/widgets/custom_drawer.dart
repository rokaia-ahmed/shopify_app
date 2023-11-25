import 'package:flutter/material.dart';

import '../../../core/srevices/preference_service.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    ) ;
  }
}
