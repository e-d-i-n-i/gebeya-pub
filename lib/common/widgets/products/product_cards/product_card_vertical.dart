import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/styles/shadows.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:gebeya_ecommerce_application/common/widgets/icons/t_circular_icon.dart';
import 'package:gebeya_ecommerce_application/common/widgets/images/t_rounded_image.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/product_price_text.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/product_title_text.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/product_details/product_detail.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productItemRadius),
          color: dark ? Pallette.darkerGrey : Pallette.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? Pallette.dark : Pallette.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: Pallette.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Pallette.black),
                      ),
                    ),
                  ),

                  // Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child:
                        TCircularicon(icon: Iconsax.heart, color: Colors.red),
                  ),
                ],
              ),
            ),

            /// -- Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                      title: 'Green Nike Air Shoes', smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerificationIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '35.0'),
                ),

                // Add to cart button
                Container(
                  decoration: const BoxDecoration(
                    color: Pallette.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productItemRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                        child: Icon(Iconsax.add_copy, color: Pallette.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
