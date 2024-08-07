import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'custom_appbar.dart';
import 'custom_search_text_field.dart';

class CustomAppBarSection extends StatelessWidget {
  const CustomAppBarSection({
    super.key,
    required this.username,
    required this.searchController,
  });

  final String username;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          CustomAppBar(
            username: username,
            searchController: searchController,
          ),
          const SizedBox(height: 24),
          const Text(
            'iFood',
            style: AppStyles.style28w700,
          ),
          const SizedBox(height: 10),
          CustomSearchTextField(
            searchController: searchController,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
