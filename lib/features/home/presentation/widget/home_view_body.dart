import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../data/data_source/all_products_list.dart';
import '../../data/data_source/menu_items_list.dart';
import '../../data/data_source/breakfast_list.dart';
import '../../data/data_source/lunch_list.dart';
import '../../data/data_source/dinner_list.dart';
import '../../data/data_source/snacks_list.dart';
import '../../data/models/product_model.dart';
import 'home_product_item.dart';
import 'menu_item.dart';
import 'view_all_widget.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _selectedIndex = 0;
  List<ProductModel> _selectedProductList = allProductsList;

  final List<List<ProductModel>> _productLists = [
    allProductsList,
    breakfastList,
    snacksList,
    lunchList,
    dinnerList,
  ];

  void _onMenuItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedProductList = _productLists[index];
    });
  }

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
                    return MenuItem(
                      item: item,
                      isSelected: index == _selectedIndex,
                      onTap: () => _onMenuItemTap(index),
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
            itemCount: _selectedProductList.length,
            itemBuilder: (context, index) {
              return HomeProductItem(
                product: _selectedProductList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
