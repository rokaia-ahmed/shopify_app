import 'package:flutter/material.dart';
import 'package:shopify_app/core/utilites/colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key,
    required this.onTap, required this.text,
    required this.icon, this.iconColor});

 final Function() onTap ;
 final String text ;
 final IconData icon ;
 final Color? iconColor ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:onTap,
      title:Text(text,
        style: Theme.of(context).textTheme.headlineMedium,
      ) ,
      leading:Icon(icon,
        size: 30,
        color:iconColor?? AppColors.primaryColor,
      ) ,
    );
  }
}
