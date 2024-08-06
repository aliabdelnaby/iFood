import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.controller,
  });

  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColors.whiteColor,
        filled: true,
        focusedBorder: buildborder(),
        enabledBorder: buildborder(),
        border: buildborder(),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder buildborder() {
    return const OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    );
  }
}
