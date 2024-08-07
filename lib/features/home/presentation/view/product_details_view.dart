import 'package:flutter/material.dart';
import 'package:ifood/features/home/presentation/widget/product_details/product_details_nav_bar.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ProductDetailsBottomNavigationBar(),
      body: Container(),
    );
  }
}
