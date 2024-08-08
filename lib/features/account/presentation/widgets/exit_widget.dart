import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import 'custom_profile_list_tile.dart';
import 'list_tile_profile_container.dart';

class ExitWidget extends StatelessWidget {
  const ExitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileProfileContainer(
      child: CustomProfileListTile(
        onTap: () {},
        title: 'Exit',
        icon: Icons.logout_outlined,
        backgroundColor: AppColors.logOutColor,
        iconColor: AppColors.logOutIconColor,
      ),
    );
  }
}
