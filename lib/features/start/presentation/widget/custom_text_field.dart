import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

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
      cursorErrorColor: AppColors.primaryColor,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          color: AppColors.whiteColor,
        ),
        errorBorder: errorBorder(),
        focusedErrorBorder: errorBorder(),
        fillColor: AppColors.whiteColor,
        filled: true,
        focusedBorder: buildborder(),
        enabledBorder: buildborder(),
        border: buildborder(),
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
    );
  }

  OutlineInputBorder errorBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1.5,
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
