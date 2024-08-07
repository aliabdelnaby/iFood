import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/models/product_model.dart';
import '../widget/product_details/product_details_back_btn.dart';
import '../widget/product_details/product_details_nav_bar.dart';
import '../widget/product_details/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouterState state = GoRouterState.of(context);
    final extra = state.extra as Map<String, dynamic>?;
    final ProductModel product = extra?['product'] ?? 'Unknown Details';
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const ProductDetailsBottomNavigationBar(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 326,
              backgroundColor: AppColors.scaffoldBackgroundColor,
              surfaceTintColor: Colors.transparent,
              floating: true,
              leading: const ProductDetailsBackBtn(),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            SliverToBoxAdapter(
              child: ProductDetailsViewBody(product: product),
            ),
          ],
        ),
      ),
    );
  }
}
