import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../account/presentation/views/account_view.dart';
import '../../../cart/presentation/views/cart_view.dart';
import '../../../favorites/presentation/views/favorites_view.dart';
import '../view/home_view.dart';

class UserMainLayoutScreen extends StatefulWidget {
  const UserMainLayoutScreen({super.key});

  @override
  State<UserMainLayoutScreen> createState() => _UserMainLayoutScreenState();
}

class _UserMainLayoutScreenState extends State<UserMainLayoutScreen> {
  int currentIndex = 0;

  late List<Widget> screens;
  void navigateToIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    screens = [
      const HomeView(),
      const CartView(),
      const FavoritesView(),
      const AccountView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: UserBottomNavBarWidget(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}

class UserBottomNavBarWidget extends StatelessWidget {
  final void Function(int)? onTap;
  final int currentIndex;

  const UserBottomNavBarWidget({
    super.key,
    this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      backgroundColor: AppColors.whiteColor,
      elevation: 4,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0.0,
      unselectedFontSize: 0.0,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          tooltip: "Home",
          label: 'Home',
          activeIcon: Icon(Icons.home_rounded, color: AppColors.primaryColor),
          icon: Icon(Icons.home_rounded, color: AppColors.primGreyColor),
        ),
        BottomNavigationBarItem(
          tooltip: "Cart",
          label: 'Cart',
          activeIcon: Icon(Icons.shopping_cart, color: AppColors.primaryColor),
          icon: Icon(Icons.shopping_cart, color: AppColors.primGreyColor),
        ),
        BottomNavigationBarItem(
          tooltip: "Favorites",
          label: 'Favorites',
          activeIcon: Icon(Icons.favorite, color: AppColors.primaryColor),
          icon: Icon(Icons.favorite, color: AppColors.primGreyColor),
        ),
        BottomNavigationBarItem(
          tooltip: "Account",
          label: 'Account',
          activeIcon: Icon(Icons.person, color: AppColors.primaryColor),
          icon: Icon(Icons.person, color: AppColors.primGreyColor),
        ),
      ],
    );
  }
}
