import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/features/cart/presentation/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        title: Text(
          'Cart',
          style: AppStyles.style28w700.copyWith(
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: const CartViewBody(),
    );
  }
}
