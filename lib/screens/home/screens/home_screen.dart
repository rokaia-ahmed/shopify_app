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
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          leading: const SizedBox(),
          expandedHeight: 200,
          floating: true,
          stretch: true,
          //pinned: true,
          flexibleSpace: CustomCarouselSlider(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
          sliver: SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: const SizedBox(),
            flexibleSpace: CustomTextFormField(
              controller: searchController,
              fillColor: Colors.white,
              hintText: 'search...',
              prefixIcon: const Icon(
                LineIcons.search,
                color: AppColors.lightGreyColor,
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          sliver: SliverToBoxAdapter(
            child: CustomRow(
              onTap: () {},
              text: 'Popular Products',
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomHorizontalList(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverPadding(
          padding:const EdgeInsets.symmetric(horizontal: 10) ,
          sliver: SliverToBoxAdapter(
            child: CustomRow(
              onTap: () {},
              text: 'New Arrivals',
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
         SliverPadding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          sliver: SliverList(
            delegate:SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) =>const CustomVerticalList() ,
            ) ,
          ),
        ),
      ],
    );
  }
}
