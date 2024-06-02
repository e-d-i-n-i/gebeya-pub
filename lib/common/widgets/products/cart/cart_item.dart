import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/images/t_rounded_image.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/product_title_text.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context)
        ? Pallette.darkerGrey
        : Pallette.light;
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark,
        ),

        //Title, Price, & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerificationIcon(title: 'Nike'),
              const Flexible(
                child:
                    TProductTitleText(title: 'Black Sports shoes', maxLines: 1),
              ),

              /// Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Green ',
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: 'Size ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'UK 08 ',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
