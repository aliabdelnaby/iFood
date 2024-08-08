import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/core/utils/assets.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.username,
    required this.tableNumber,
  });

  final String username;
  final String tableNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          child: Image.asset(
            Assets.imagesIfood,
            height: MediaQuery.of(context).size.height * 0.2,
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          username,
          style: AppStyles.style28w700.copyWith(
            color: AppColors.blackColor,
          ),
        ),
        const SizedBox(height: 9),
        Text(
          'Table: $tableNumber',
          style: AppStyles.style14w500Black.copyWith(
            color: AppColors.tableColor,
          ),
        ),
      ],
    );
  }
}
