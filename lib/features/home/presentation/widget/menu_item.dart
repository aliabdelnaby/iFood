import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../data/models/menu_model.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final MenuModel item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              minHeight: 45,
              minWidth: 45,
            ),
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
              color: AppColors.menuGreyColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.all(9.0),
              child: Center(
                child: SvgPicture.asset(
                  item.image,
                ),
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            item.name,
            style:
                isSelected ? AppStyles.style14w500 : AppStyles.style14w500Black,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
