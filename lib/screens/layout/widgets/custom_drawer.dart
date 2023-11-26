import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shopify_app/core/utilites/colors.dart';

import '../../../core/srevices/preference_service.dart';
import 'custom_list_tile.dart';

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
          const CircleAvatar(
            backgroundColor:AppColors.lightGreyColor ,
            radius: 50,
            backgroundImage:NetworkImage(
                'https://icon-library.com/images/default-user-icon/default-user-icon-13.jpg') ,
          ),
          const SizedBox( height: 10,),
          Text('Roka Ahmed',
          style:Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: AppColors.primaryColor,
          ) ,
          ),
          CustomListTile(
            onTap: () {},
            text: 'profile',
            icon: LineIcons.userAlt,),
          CustomListTile(
            onTap: () {},
            text: 'Home page',
            icon: LineIcons.home,),
          CustomListTile(
            onTap: () {},
            text: 'Orders',
            icon: LineIcons.history,),
          CustomListTile(
            onTap: () {},
            text: 'Favorite',
            icon: LineIcons.heart,),
          CustomListTile(
            onTap: () {},
            text: 'Notification',
            icon: LineIcons.bell,),
          CustomListTile(
            onTap: () {},
            text: 'Language',
            icon: LineIcons.language,),
          CustomListTile(
            onTap: () {},
            text: 'Dark Mode',
            icon: LineIcons.moon,),
          const Spacer(),
          CustomListTile(
            onTap: () {
              PreferenceService.prefs().remove('email');
            },
            text: 'Log Out',
            iconColor: Colors.red,
            icon: LineIcons.alternateSignOut,),
          const SizedBox(
            height: 10,
          ),
        ],
      ) ,
    ) ;
  }
}
