import 'package:flutter/material.dart';
import 'package:ifood/core/utils/app_colors.dart';
import 'package:ifood/core/utils/app_text_styles.dart';
import 'package:ifood/features/home/data/data_source/menu_items_list.dart';
import 'package:ifood/features/home/presentation/widget/home_product_item.dart';
import 'package:ifood/features/home/presentation/widget/menu_item.dart';
import 'package:ifood/features/home/presentation/widget/view_all_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const ViewAllWidget(),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const HomeProductItem();
            },
          ),
        ),
      ],
    );
  }
}
