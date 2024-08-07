import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../data/data_source/all_products_list.dart';
import '../../data/data_source/menu_items_list.dart';
import '../../data/data_source/breakfast_list.dart';
import '../../data/data_source/lunch_list.dart';
import '../../data/data_source/dinner_list.dart';
import '../../data/data_source/snacks_list.dart';
import 'home_product_item.dart';
import 'menu_item.dart';
import 'view_all_widget.dart';
import '../../data/models/product_model.dart';

class HomeViewBody extends StatefulWidget {
  final TextEditingController searchController;

  const HomeViewBody({super.key, required this.searchController});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _selectedIndex = 0;
  List<ProductModel> _selectedProductList = allProductsList;
  List<ProductModel> _filteredProductList = allProductsList;

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
      _filterProducts();
    });
  }

  void _filterProducts() {
    setState(() {
      if (widget.searchController.text.isEmpty) {
        _filteredProductList = _selectedProductList;
      } else {
        _filteredProductList = _selectedProductList
            .where((product) => product.name
                .toLowerCase()
                .contains(widget.searchController.text.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    widget.searchController.addListener(_filterProducts);
  }

  @override
  void dispose() {
    widget.searchController.removeListener(_filterProducts);
    widget.searchController.dispose();
    super.dispose();
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
                height: MediaQuery.of(context).size.height * 0.1,
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
        const SizedBox(height: 20),
        const ViewAllWidget(),
        Expanded(
          child: _filteredProductList.isEmpty
              ? Center(
                  child: Text(
                    'No products found: ${widget.searchController.text}',
                    style: AppStyles.style18w600.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: _filteredProductList.length,
                  itemBuilder: (context, index) {
                    return HomeProductItem(
                        product: _filteredProductList[index]);
                  },
                ),
        ),
      ],
    );
  }
}
