import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/appbar/appbar.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/cart/coupon_widgets.dart';
import 'package:gebeya_ecommerce_application/common/widgets/success_screen/success_screen.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:gebeya_ecommerce_application/navigation_menu.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in Cart
              const TCartItems(showAddRemoveButton: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Coupon TextField
              const CouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// -- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? Pallette.black : Pallette.white,
                child: const Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Payment Methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///Address
                    TBillingAddressSection(),
                  ], // Column
                ),
              )
            ],
          ),
        ),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Success!',
                  subTitle: 'Your item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
