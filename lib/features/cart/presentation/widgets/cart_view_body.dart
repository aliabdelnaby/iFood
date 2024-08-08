import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'cart_item.dart';
import '../../../home/data/data_source/lunch_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 23),
        child: Column(
          children: [
            Column(
              children: List.generate(
                lunchList.length,
                (index) {
                  final product = lunchList[index];
                  return CartItem(product: product);
                },
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: AppStyles.style18w600.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
                Text(
                  "224.6",
                  style: AppStyles.style14w500Black.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Checkout",
                  style: AppStyles.style18w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
