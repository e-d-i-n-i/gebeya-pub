import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/cart/add_remove_button.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/cart/cart_item.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/product_price_text.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          //Cart Item
          const TCartItem(),
          if (showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

          // Add Remove Button Row with total Price
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //Extra Space
                    SizedBox(
                      width: 70,
                    ),

                    /// Add Remove Buttons
                    ProductQuantityWithAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
