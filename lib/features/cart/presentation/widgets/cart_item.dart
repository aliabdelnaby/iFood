import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../home/data/models/product_model.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.product});

  final ProductModel product;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  double get _currentPrice {
    return 17.3 * quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 11,
            vertical: 10,
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
                    widget.product.image,
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
                      widget.product.name,
                      style: AppStyles.style18w600.copyWith(
                        color: AppColors.blackColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.product.category,
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
                            text: '\$${_currentPrice.toStringAsFixed(2)} ',
                            style: AppStyles.style14w500Black.copyWith(
                              color: AppColors.primaryColor,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          TextSpan(
                            text: widget.product.oldPrice,
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
                            InkWell(
                              onTap: _decreaseQuantity,
                              child: Container(
                                padding: const EdgeInsetsDirectional.all(4),
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
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '$quantity',
                              style: AppStyles.style12w400,
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: _increaseQuantity,
                              child: Container(
                                padding: const EdgeInsetsDirectional.all(4),
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
  }
}
