import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../home/data/models/product_model.dart';

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({super.key, required this.product});

  final ProductModel product;

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 5),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.cardShadowColor,
            blurRadius: 4,
            spreadRadius: 0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.12,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image(
                    image: AssetImage(
                      widget.product.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10.5,
                right: 9.5,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: isFavorite
                        ? AppColors.likedColor
                        : AppColors.primGreyColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.name,
                  style: AppStyles.style14w600,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  widget.product.category,
                  style: AppStyles.style12w600.copyWith(
                    color: AppColors.tableColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
