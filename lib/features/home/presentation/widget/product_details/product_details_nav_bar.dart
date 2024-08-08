import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ProductDetailsBottomNavigationBar extends StatefulWidget {
  const ProductDetailsBottomNavigationBar({super.key});

  @override
  State<ProductDetailsBottomNavigationBar> createState() =>
      _ProductDetailsBottomNavigationBarState();
}

class _ProductDetailsBottomNavigationBarState
    extends State<ProductDetailsBottomNavigationBar> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 23, vertical: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Icon(
              Icons.favorite,
              size: 30,
              color:
                  isFavorite ? AppColors.likedColor : AppColors.primGreyColor,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Add to cart',
                style: AppStyles.style18w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
