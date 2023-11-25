import 'package:flutter/material.dart';
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
    const HomeScreen(),
    const Text('category'),
    const Text('favorite'),
    const Text('profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:const CustomDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
       backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:screens[currentIndex] ,
      bottomNavigationBar:CustomNavBar(
        onTap:(index){
          currentIndex = index;
          setState(() {});
        } ,
        activeIndex: currentIndex,
      ),
    );
  }
}
