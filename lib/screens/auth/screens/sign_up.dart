import 'package:flutter/material.dart';
import 'package:shopify_app/core/router/router.dart';
import 'package:shopify_app/screens/auth/screens/sign_in.dart';
import '../../../core/widgets/custom_default_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:const BackButton(
          color: Colors.black,
        ) ,
      ) ,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('Create Account',
                  textAlign: TextAlign.center,
                  style:Theme.of(context).textTheme.headlineLarge ,
                ),
              ),
              const SizedBox(
                height:5,
              ),
              Center(
                child: Text('Let’s Create Account Together',
                  textAlign: TextAlign.center,
                  style:Theme.of(context).textTheme.headlineSmall ,
                ),
              ),
              const SizedBox(
                height:20,
              ),
              Text('Your Name',
                textAlign: TextAlign.center,
                style:Theme.of(context).textTheme.headlineMedium ,
              ),
              const SizedBox(
                height:10,
              ),
              CustomTextFormField(controller:emailController ),
              const SizedBox(
                height:10,
              ),
              Text('Email Address',
                textAlign: TextAlign.center,
                style:Theme.of(context).textTheme.headlineMedium ,
              ),
              const SizedBox(
                height:10,
              ),
              CustomTextFormField(controller:emailController ),
              const SizedBox(
                height:10,
              ),
              Text('Password',
                textAlign: TextAlign.center,
                style:Theme.of(context).textTheme.headlineMedium ,
              ),
              const SizedBox(
                height:10,
              ),
              CustomTextFormField(controller:passwordController ),
              const SizedBox(
                height:30,
              ),
              CustomDefaultButton(
                onTap:(){} ,
                text: 'Sign up',
              ),
              const SizedBox(
                height:10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w400
                    ) ,
                  ),
                  TextButton(
                    onPressed:(){
                      MagicRouter.navigateTo(SignInScreen());
                    } ,
                    child: Text('Sign In',
                      style:Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.blue
                      ) ,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
