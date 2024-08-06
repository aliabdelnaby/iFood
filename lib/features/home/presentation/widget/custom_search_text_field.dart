import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        fillColor: AppColors.searchColor,
        filled: true,
        isDense: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search',
        hintStyle: AppStyles.style14w500search,
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: AppColors.greyColor,
          size: 20,
        ),
      ),
    );
  }
}
