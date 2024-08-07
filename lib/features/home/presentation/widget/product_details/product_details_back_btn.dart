import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';

class ProductDetailsBackBtn extends StatelessWidget {
  const ProductDetailsBackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 23, top: 22),
      child: InkWell(
        onTap: () => GoRouter.of(context).pop(),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.whiteColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
