import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/core/utils/assets.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 9),
      margin:
          const EdgeInsetsDirectional.symmetric(horizontal: 23, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.cardShadowColor,
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(10),
                child: Image.asset(
                  Assets.imagesDonuts,
                  height: 102,
                ),
              ),
              const Positioned(
                right: 10,
                top: 9,
                child: InkWell(
                  onTap: null,
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.ratingGreyColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Donuts",
                style: AppStyles.style14w600,
              ),
              const SizedBox(height: 4),
              const Text(
                "Snack",
                style: AppStyles.style12w400gery,
              ),
              const SizedBox(height: 5),
              Row(
                children: List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star,
                    color: AppColors.ratingColor,
                    size: 12,
                  ),
                ),
              ),
              const SizedBox(height: 9),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$6.4 ',
                          style: AppStyles.style14w500Black.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: '\$8.2',
                          style: AppStyles.style12w400gery.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 75),
                  const InkWell(
                    onTap: null,
                    child: Icon(
                      Icons.shopping_cart,
                      color: AppColors.primaryColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
