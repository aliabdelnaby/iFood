import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../data/models/product_model.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({super.key, required this.product});
  final ProductModel product;
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
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  child: Image.asset(
                    product.image,
                    height: 102,
                    width: 222,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  right: 10,
                  top: 9,
                  child: InkWell(
                    onTap: null,
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.primGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppStyles.style14w600,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  product.category,
                  style: AppStyles.style12w400gery,
                  overflow: TextOverflow.ellipsis,
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
                    Expanded(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${product.price} ',
                              style: AppStyles.style14w500Black.copyWith(
                                color: AppColors.primaryColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            TextSpan(
                              text: product.oldPrice,
                              style: AppStyles.style12w400gery.copyWith(
                                decoration: TextDecoration.lineThrough,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
          ),
        ],
      ),
    );
  }
}
