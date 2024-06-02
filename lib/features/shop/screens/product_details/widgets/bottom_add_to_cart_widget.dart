import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/icons/t_circular_icon.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? Pallette.darkerGrey : Pallette.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(TSizes.cardRadiusLg),
            topRight: Radius.circular(TSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TCircularicon(
                icon: Iconsax.minus_copy,
                backgroundColor: Pallette.darkGrey,
                width: 40,
                height: 40,
                color: Pallette.white,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: TSizes.spaceBtwItems),
              const TCircularicon(
                icon: Iconsax.add_copy,
                backgroundColor: Pallette.black,
                width: 40,
                height: 40,
                color: Pallette.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: Pallette.black,
              side: const BorderSide(color: Pallette.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
