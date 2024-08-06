import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/features/home/data/data_source/menu_list_items.dart';
import 'package:ifood/features/home/presentation/widget/custom_app_bar_section.dart';
import 'package:ifood/features/home/presentation/widget/menu_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouterState state = GoRouterState.of(context);
    final extra = state.extra as Map<String, String>?;
    final String username = extra?['username'] ?? 'Unknown User';
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBarSection(username: username),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu',
                    style: AppStyles.style18w600.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    child: ListView.separated(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemCount: menuListItems.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 30),
                      itemBuilder: (context, index) {
                        final item = menuListItems[index];
                        return InkWell(
                          onTap: () {},
                          child: MenuItem(item: item),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0, left: 23.0, right: 23.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'View All',
                  style: AppStyles.style12w400,
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  return Container(
                    height: 120,
                    margin: const EdgeInsets.symmetric(horizontal: 23),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.cardShadowColor,
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
