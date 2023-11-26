import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.onTap,
    required this.text});
  final Function() onTap ;
  final String text ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style:Theme.of(context).textTheme.headlineMedium ,
        ),
        InkWell(
          onTap:onTap,
          child: Text('see all',
            style:Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.blue,
            ) ,
          ),
        ),
      ],
    );
  }
}
