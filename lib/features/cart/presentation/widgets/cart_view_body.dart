import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/features/home/data/data_source/lunch_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          lunchList.length,
          (index) {
            final product = lunchList[index];
            return Column(
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 11,
                    vertical: 10,
                  ),
                  margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: 23,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          child: Image.asset(
                            product.image,
                            height: 123,
                            width: 218,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: AppStyles.style18w600.copyWith(
                                color: AppColors.blackColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              product.category,
                              style: AppStyles.style14w500Black.copyWith(
                                color: AppColors.greyColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
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
                            RichText(
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
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: AppColors.primaryColor,
                                      ),
                                      child: const Icon(
                                        Icons.remove,
                                        color: AppColors.whiteColor,
                                        size: 12,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      '2',
                                      style: AppStyles.style12w400,
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: AppColors.primaryColor,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: AppColors.whiteColor,
                                        size: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.delete,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.primGreyColor.withOpacity(0.44),
                  height: 0,
                  endIndent: 65,
                  indent: 65,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
