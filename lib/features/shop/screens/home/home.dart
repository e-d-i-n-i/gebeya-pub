import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:gebeya_ecommerce_application/common/widgets/layouts/grid_layout.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/section_heading.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/all_products/all_products.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/home/widgets/home_categories.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  // App bar
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Search bar
                  TSearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal_copy,
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        // Categories
                        THomeCategroies(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections)
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Heading
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Popular Products
                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
