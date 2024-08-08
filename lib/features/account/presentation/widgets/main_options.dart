import 'package:flutter/material.dart';

import 'custom_profile_list_tile.dart';
import 'list_tile_profile_container.dart';
import 'profile_divider.dart';

class MainOptions extends StatelessWidget {
  const MainOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileProfileContainer(
      child: Column(
        children: [
          CustomProfileListTile(
            onTap: () {},
            title: 'My Orders',
            icon: Icons.list_alt_rounded,
          ),
          const CustomProfileDivider(),
          CustomProfileListTile(
            onTap: () {},
            title: 'Payment Methods',
            icon: Icons.credit_card_rounded,
          ),
        ],
      ),
    );
  }
}
