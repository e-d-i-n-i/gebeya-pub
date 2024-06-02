import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/appbar/appbar.dart';
import 'package:gebeya_ecommerce_application/common/widgets/appbar/tabbar.dart';
import 'package:gebeya_ecommerce_application/common/widgets/brands/brand_card.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:gebeya_ecommerce_application/common/widgets/layouts/grid_layout.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/section_heading.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/brands/all_brands.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/store/widgets/category_tab.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? Pallette.black
                      : Pallette.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // Search bar
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                          icon: Iconsax.search_normal_copy,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        // Featured Brands
                        TSectionHeading(
                          title: 'Featured Brands',
                          onPressed: () =>
                              Get.to(() => const AllBrandsScreen()),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),

                        // Brands Grid
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(
                                showBoarder: false,
                              );
                            })
                      ],
                    ),
                  ),

                  // Tab bar

                  bottom: const TTabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furnitures')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ]))
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
