import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shopify_app/core/utilites/colors.dart';
import 'package:shopify_app/core/widgets/custom_text_form_field.dart';

import '../widgets/custom_carousal_slider.dart';
import '../widgets/custom_horizontal_list.dart';
import '../widgets/custom_row.dart';
import '../widgets/custom_vertical_list.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});
   final  searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCarouselSlider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomTextFormField(
                  controller: searchController,
                  fillColor: Colors.white,
                  hintText: 'search...',
                  prefixIcon: const Icon(LineIcons.search,
                  color: AppColors.lightGreyColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomRow(
                  onTap:(){} ,
                  text:'Popular Products' ,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomHorizontalList(),
                const SizedBox(
                  height: 10,
                ),
                CustomRow(
                  onTap:(){} ,
                  text:'New Arrivals' ,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomVerticalList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
