import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class FavoritesClearAllBtn extends StatelessWidget {
  const FavoritesClearAllBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Clear all',
          style: AppStyles.style12w600.copyWith(
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
