import 'package:bellr_mobile/theme/pallete.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;

  const AuthField({super.key, required this.controller, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller : controller, 
      decoration : InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius : BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Pallete.blueColor,
            width : 3),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius : BorderRadius.circular(5),
          borderSide: const BorderSide(color: Pallete.greyColor)
        ),
        contentPadding: const EdgeInsets.all(22),
        hintText: placeholder,
        hintStyle : const TextStyle(
          fontSize: 18
        )
      )
    );
  }
}