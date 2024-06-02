import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/appbar/appbar.dart';
import 'package:gebeya_ecommerce_application/common/widgets/icons/t_circular_icon.dart';
import 'package:gebeya_ecommerce_application/common/widgets/layouts/grid_layout.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/home/home.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularicon(
              icon: Icons.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ), // TAppBar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ), // Padding
      ), // SingleChildScrollView
    );
  }
}
