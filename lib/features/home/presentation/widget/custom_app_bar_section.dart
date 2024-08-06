import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/features/home/presentation/widget/custom_appbar.dart';
import 'package:ifood/features/home/presentation/widget/custom_search_text_field.dart';

class CustomAppBarSection extends StatelessWidget {
  const CustomAppBarSection({super.key, required this.username});

  final String username;

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
          CustomAppBar(username: username),
          const SizedBox(height: 24),
          const Text(
            'iFood',
            style: AppStyles.style28w700,
          ),
          const SizedBox(height: 10),
          const CustomSearchTextField(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
