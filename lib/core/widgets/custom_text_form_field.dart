import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
    required this.controller,
    this.onSubmitted, this.validator});

  final TextEditingController controller;
  final Function(String)? onSubmitted;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller:controller ,
        onFieldSubmitted:onSubmitted ,
        validator: validator,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey.shade300,
          enabledBorder:border,
          focusedBorder:border,
        ) ,
      ),
    );
  }
}

var border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    width: 0,
    color: Colors.transparent,
  ),
) ;