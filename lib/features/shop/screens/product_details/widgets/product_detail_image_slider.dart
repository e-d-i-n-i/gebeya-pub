import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/appbar/appbar.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:gebeya_ecommerce_application/common/widgets/icons/t_circular_icon.dart';
import 'package:gebeya_ecommerce_application/common/widgets/images/t_rounded_image.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return CustomEdgeWidget(
      child: Container(
        color: dark ? Pallette.darkerGrey : Pallette.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(TSizes.productItemRadius * 2),
                  child: Center(
                      child: Image(image: AssetImage(TImages.productImage5))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: TSizes.spaceBtwItems),
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    backgroundColor: dark ? Pallette.dark : Pallette.white,
                    border: Border.all(color: Pallette.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    imageUrl: TImages.productImage6,
                  ),
                ),
              ),
            ),

            /// Appbar Icons
            const TAppBar(
              showBackArrow: true,
              actions: [TCircularicon(icon: Iconsax.heart, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
