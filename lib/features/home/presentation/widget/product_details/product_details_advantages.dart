
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/assets.dart';

class ProductDetailsAdvantages extends StatelessWidget {
  const ProductDetailsAdvantages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          onPressed: () {},
          label: const Text(
            'Safe',
            style: AppStyles.style12w600,
          ),
          icon: const Icon(
            Icons.sentiment_satisfied_alt_outlined,
            color: AppColors.primaryColor,
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          label: const Text(
            'Quality',
            style: AppStyles.style12w600,
          ),
          icon: const Icon(
            Icons.thumb_up_off_alt_outlined,
            color: AppColors.primaryColor,
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          label: const Text(
            'Fresh',
            style: AppStyles.style12w600,
          ),
          icon: SvgPicture.asset(
            Assets.imagesPlant,
            height: 20,
          ),
        ),
      ],
    );
  }
}
