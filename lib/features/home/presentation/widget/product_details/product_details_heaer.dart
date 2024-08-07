import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/product_model.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              product.name,
              style: AppStyles.style28w700.copyWith(
                color: AppColors.blackColor,
              ),
            ),
            Row(
              children: List.generate(
                5,
                (index) {
                  return const Icon(
                    Icons.star,
                    color: AppColors.ratingColor,
                    size: 20,
                  );
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${product.price} ',
                    style: AppStyles.style18w600.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  TextSpan(
                    text: product.oldPrice,
                    style: AppStyles.style14w500Black.copyWith(
                      color: AppColors.greyColor,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.access_time_filled,
                  color: AppColors.primaryColor,
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  '20 min',
                  style: AppStyles.style14w500Black.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
