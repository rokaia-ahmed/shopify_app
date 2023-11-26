import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shopify_app/core/utilites/colors.dart';
import '../../home/screens/home_screen.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/custom_drawer.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}
class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex=0 ;
  List screens = [
     HomeScreen(),
    const Text('category'),
    const Text('favorite'),
    const Text('profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      drawer:const CustomDrawer(),
      appBar: AppBar(
        toolbarHeight: 45,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
       title:const Text('shopify',
       style: TextStyle(color: AppColors.primaryColor),
       ) ,
       centerTitle: true,
       actions: [
         IconButton(
           iconSize: 30,
             icon: const Icon(
                 LineIcons.shoppingCart),
           onPressed: () {  },),
       ],
       backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:screens[currentIndex] ,
      bottomNavigationBar:
      CustomNavBar(
        onTap:(index){
          currentIndex = index;
          setState(() {});
        } ,
        activeIndex: currentIndex,
      ),
    );
  }
}
