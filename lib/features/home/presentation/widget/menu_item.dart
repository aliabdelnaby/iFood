import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/features/home/data/models/menu_model.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.item});

  final MenuModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
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
            padding: const EdgeInsets.all(9.0),
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
          style: AppStyles.style14w500Black,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
