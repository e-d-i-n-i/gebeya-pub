import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/layouts/grid_layout.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration:
              const InputDecoration(prefixIcon: Icon(Iconsax.sort_copy)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// Products
        TGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const TProductCardVertical())
      ],
    );
  }
}
