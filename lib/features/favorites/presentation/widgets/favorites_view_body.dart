import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'clear_all_btn.dart';
import 'favorite_item.dart';
import '../../../home/data/data_source/dinner_list.dart';

class FavoritesViewBody extends StatelessWidget {
  const FavoritesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 23),
      child: Column(
        children: [
          const FavoritesClearAllBtn(),
          const SizedBox(height: 26),
          Expanded(
            child: GridView.builder(
              clipBehavior: Clip.none,
              itemCount: dinnerList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
                childAspectRatio: 0.95,
              ),
              itemBuilder: (context, index) {
                final product = dinnerList[index];
                return InkWell(
                    onTap: () {
                      GoRouter.of(context).push(
                        '/productDetails',
                        extra: {
                          'product': product,
                        },
                      );
                    },
                    child: FavoriteItem(product: product));
              },
            ),
          ),
        ],
      ),
    );
  }
}
