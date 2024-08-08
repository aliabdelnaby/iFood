import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

class CustomProfileDivider extends StatelessWidget {
  const CustomProfileDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.logOutColor,
      thickness: 1,
      height: 0,
      endIndent: 32,
      indent: 32,
    );
  }
}
