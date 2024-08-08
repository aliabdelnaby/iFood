import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../widgets/favorites_view_body.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Favorites',
          style: AppStyles.style28w700.copyWith(
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: const FavoritesViewBody(),
    );
  }
}
