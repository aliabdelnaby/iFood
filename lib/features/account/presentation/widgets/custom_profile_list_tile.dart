import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({
    super.key,
    this.onTap,
    required this.title,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
  });

  final Function()? onTap;
  final String title;
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      visualDensity: VisualDensity.standard,
      title: Text(
        title,
        style: AppStyles.style14w600,
      ),
      leading: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: iconColor ?? AppColors.whiteColor,
        ),
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right_outlined,
        color: AppColors.arrowColor,
      ),
    );
  }
}
