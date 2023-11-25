import 'package:flutter/material.dart';
import 'package:shopify_app/core/srevices/preference_service.dart';
import 'package:shopify_app/screens/auth/screens/sign_up.dart';
import '../../../core/router/router.dart';
import '../../../core/widgets/custom_default_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../layout/screen/layout.dart';

class SignInScreen extends StatelessWidget {
   SignInScreen({super.key});
 final emailController = TextEditingController();
 final passwordController = TextEditingController();
 final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key:formKey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height:70,
                  ),
                 Center(
                   child: Text('Hello Again!',
                   textAlign: TextAlign.center,
                   style:Theme.of(context).textTheme.headlineLarge ,
                   ),
                 ),
                  const SizedBox(
                    height:5,
                  ),
                  Center(
                    child: Text('Welcome Back You’ve Been Missed!',
                      textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.headlineSmall ,
                    ),
                  ),
                  const SizedBox(
                    height:20,
                  ),
                  Text('Email Address',
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.headlineMedium ,
                  ),
                  const SizedBox(
                    height:10,
                  ),
                  CustomTextFormField(
                      controller:emailController,
                      validator:(value){
                        if(value!.isEmpty) {
                          return 'email is required';
                        }
                        return null ;
                      } ,
                  ),
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
                  CustomTextFormField(controller:passwordController ,
                    validator:(value){
                    if(value!.isEmpty) {
                      return 'password is required';
                    }
                    return null ;
                    } ,
                  ),
                  const SizedBox(
                    height:3,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap:(){} ,
                      child: Text('Forget Password?',
                        style:Theme.of(context).textTheme.headlineSmall ,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height:30,
                  ),
                  CustomDefaultButton(text: 'Sign In',
                  onTap:(){
                    if(formKey.currentState!.validate()) {
                      PreferenceService.prefs().
                      setString('email',emailController.text);
                      MagicRouter.navigateTo(const LayoutScreen());
                    }
                  } ,
                  ),
                  const SizedBox(
                    height:10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account?',
                        textAlign: TextAlign.center,
                        style:Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w400
                        ) ,
                      ),
                      TextButton(
                        onPressed:(){
                          MagicRouter.navigateTo(SignUpScreen());
                        } ,
                        child: Text('Sign Up',
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
        ),
      ),
    );
  }
}
