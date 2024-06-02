import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:gebeya_ecommerce_application/common/widgets/images/t_circular_image.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/enums.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBoarder,
    this.onTap,
  });
  final bool showBoarder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBoarder,
        backgroundColor: Colors.transparent,
        child: Row(children: [
          // Icon
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImages.clothIcon,
              backgroundColor: Colors.transparent,
              overlayColor: THelperFunctions.isDarkMode(context)
                  ? Pallette.white
                  : Pallette.black,
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2),

          // Text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TBrandTitleWithVerificationIcon(
                  title: 'Nike',
                  brandTextSizes: TextSizes.large,
                ),
                Text(
                  '256 products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
