import 'package:flutter/material.dart';
import 'package:shopify_app/core/utilites/colors.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({super.key});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 210,
      child: ListView.separated(
          scrollDirection:Axis.horizontal ,
          physics: const BouncingScrollPhysics(),
          shrinkWrap:true ,
          itemBuilder: (context,index)=>const BuildItem(),
          separatorBuilder: (context,index)=>
              const SizedBox(width: 10),
          itemCount: 10),
    );
  }
}
class BuildItem extends StatelessWidget {
  const BuildItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:170 ,
      child: Card(
        shape:OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none
        ) ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image.network(
                    'https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.webp?b=1&s=170667a&w=0&k=20&c=liUSgX6SafJ7HWvefFqR9-pnf3KuH6v1lwQ6iEpePWc=',
                    height:100 ,
                    width: 130,
                    fit:BoxFit.fill ,
                    errorBuilder:(context,_,stackTrace){
                      return const SizedBox();
                    } ,
                  ),
                  const SizedBox(height: 5),
                  const Text('BEST SELLER',
                    style:TextStyle(
                      fontSize:12 ,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text('Nike Jordan',
                    overflow:TextOverflow.ellipsis ,
                    maxLines: 1,
                    style:Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('\$493.00',
                    style:Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      color: AppColors.lightPurple ),
                  child: const Icon(Icons.add,
                    color: Colors.white,
                    size:20 ,
                  ) ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

