import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/icons/t_circular_icon.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularicon(
          icon: Iconsax.minus_copy,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context)
              ? Pallette.white
              : Pallette.black,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? Pallette.darkerGrey
              : Pallette.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSizes.spaceBtwItems),
        const TCircularicon(
            icon: Iconsax.add_copy,
            width: 32,
            height: 32,
            size: TSizes.md,
            color: Pallette.white,
            backgroundColor: Pallette.primary),
      ],
    );
  }
}
