import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../core/utilites/colors.dart';

class CustomCarouselSlider extends StatelessWidget {
   CustomCarouselSlider({super.key});

  final List<String> images = [
    'https://th.bing.com/th/id/R.5cd2112102cf223debd9dc2a08a93f3a?rik=dpwvOrpX1Pk3Lw&pid=ImgRaw&r=0',
    'https://peaseandcurren.com/wp-content/uploads/2020/03/Retail-and-online-shopping-1536x1024.jpg',
    'https://th.bing.com/th/id/OIP.H52yMR1vLXs7ygOqMOfwPwHaE_?w=1039&h=700&rs=1&pid=ImgDetMain',
    'https://myareanetwork-photos.s3.amazonaws.com/editorphotos/f/41826_1605057062.jpg?1620308603',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(images.length,
              (index){
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(images[index],
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  fit: BoxFit.fill,
                  errorBuilder:(context,_,error){
                  return const SizedBox();
                  } ,
                ),
                DotsIndicator(
                  dotsCount: images.length,
                  position: index,
                  decorator: DotsDecorator(
                    size: const Size.square(10),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    spacing: const EdgeInsets.all(5),
                    activeColor: AppColors.primaryColor,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          }),
      options:CarouselOptions(
        height: 200,
        disableCenter: true,
        viewportFraction: 0.75,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
      ),
    );
  }
}
