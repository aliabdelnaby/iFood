import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/features/home/data/data_source/all_products_list.dart';
import 'package:ifood/features/home/data/models/product_model.dart';
import 'package:ifood/features/home/presentation/widget/product_details/product_details_advantages.dart';
import 'package:ifood/features/home/presentation/widget/product_details/product_details_heaer.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetailsHeader(product: product),
          const SizedBox(height: 13),
          const ProductDetailsAdvantages(),
          Text(
            "1. Make your own dough. Mix it up in the morning (or the night before) and it will be waiting for you come dinnertime.\n2. Keep the sauce and toppings simple. A simple, no-cook red sauce is best. To ensure the crust cooks through, keep the toppings to just a handful.\n3. Bake it hot. Crank the oven to its highest setting and let it heat for at least half an hour. Then, bake the pizza on parchment paper (either on a pizza stone or baking sheet) for about 10 minutes.",
            style: AppStyles.style14w500Black.copyWith(
              color: AppColors.greyColor,
            ),
          ),
          const SizedBox(height: 36),
          Text(
            "Similar Products",
            style: AppStyles.style18w600.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              children: List.generate(
                allProductsList.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 11),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        allProductsList[index].image,
                        height: 93,
                        width: 121,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
