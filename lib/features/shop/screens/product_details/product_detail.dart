import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/section_heading.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share
                  const TRatingAndShare(),

                  ///- Price, Title, Stock, & Brand
                  const TProductMetaData(),

                  /// -- Attributes
                  const ProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// - Description
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am just practicing and nothing else.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'Reviews (199)', showActionButton: false),
                      IconButton(
                          icon: const Icon(Iconsax.arrow_right_3, size: 18),
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
