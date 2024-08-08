import 'package:flutter/material.dart';
import 'custom_profile_list_tile.dart';
import 'list_tile_profile_container.dart';
import 'profile_divider.dart';

class OtherOtions extends StatelessWidget {
  const OtherOtions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileProfileContainer(
      child: Column(
        children: [
          CustomProfileListTile(
            onTap: () {},
            title: 'Settings',
            icon: Icons.settings_outlined,
          ),
          const CustomProfileDivider(),
          CustomProfileListTile(
            onTap: () {},
            title: 'Help Center',
            icon: Icons.headphones,
          ),
          const CustomProfileDivider(),
          CustomProfileListTile(
            onTap: () {},
            title: 'About Us',
            icon: Icons.info_outline_rounded,
          ),
          CustomProfileListTile(
            onTap: () {},
            title: 'Share App',
            icon: Icons.share,
          ),
        ],
      ),
    );
  }
}
