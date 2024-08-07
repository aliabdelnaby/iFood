import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            'Hi, $username',
            style: AppStyles.style18w600,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SvgPicture.asset(
          Assets.imagesShoppingCart,
        ),
      ],
    );
  }
}
