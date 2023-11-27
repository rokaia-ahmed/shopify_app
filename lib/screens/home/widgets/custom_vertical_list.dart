import 'package:flutter/material.dart';
import '../../../core/utilites/colors.dart';

class CustomVerticalList extends StatelessWidget {
  const CustomVerticalList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
         physics:const BouncingScrollPhysics() ,
        shrinkWrap:true ,
        itemBuilder: (context,index)=>const BuildItem(),
        separatorBuilder: (context,index)=>
        const SizedBox(width: 10),
        itemCount: 10);
  }
}

class BuildItem extends StatelessWidget {
  const BuildItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape:OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none
      ) ,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textBaseline:TextBaseline.alphabetic ,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Best Choice',
                  style:TextStyle(
                    fontSize:12 ,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 5),
                Text('Nike Air Jordan',
                  overflow:TextOverflow.ellipsis ,
                  maxLines: 1,
                  style:Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text('\$493.00',
                      textAlign:TextAlign.start ,
                      style:Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius:  const BorderRadius.all(
                              Radius.circular(6)),
                          color: AppColors.lightPurple ),
                      child: const Icon(Icons.add,
                        color: Colors.white,
                        size:15 ,
                      ) ,
                    ),
                  ],
                ),
              ],
            ),
            Image.network(
              'https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.webp?b=1&s=170667a&w=0&k=20&c=liUSgX6SafJ7HWvefFqR9-pnf3KuH6v1lwQ6iEpePWc=',
              height:120 ,
              width: 160,
              fit:BoxFit.fill ,
              errorBuilder:(context,_,stackTrace){
                return const SizedBox(
                  height:120 ,
                  width: 160,
                );
              } ,
            ),
          ],
        ),
      ),
    );
  }
}