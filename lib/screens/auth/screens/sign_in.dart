import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            /* Spacer(
               flex: 1,
             ) ,*/
             Text('Hello Again!',
             textAlign: TextAlign.center,
             style:Theme.of(context).textTheme.headlineLarge ,
             ),
            ],
          ),
        ),
      ),
    );
  }
}
