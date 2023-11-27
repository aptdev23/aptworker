// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

// text field for sign in / sign up / registration text field
class theTextField extends StatelessWidget {
  final Controller;
  final String hintText;
  final bool obscureText;
  final Color hintTextColor;
  final TextInputType? keyboard;
  final Widget? suffixIcon;
  int? minLines;
  int? maxLines;

  theTextField({
    super.key,
    required this.Controller,
    required this.hintText,
    required this.obscureText,
    required this.hintTextColor,
    this.maxLines,
    this.minLines,
    this.keyboard,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        keyboardType: keyboard,
        maxLines: maxLines,
        minLines: minLines,
        controller: Controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueAccent,
            ),
          ),
          fillColor: Colors.white54,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintTextColor,
            //Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
