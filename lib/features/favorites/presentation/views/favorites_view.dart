import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text(
          'Favorites',
          style: AppStyles.style28w700.copyWith(
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
