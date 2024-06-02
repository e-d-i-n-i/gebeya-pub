import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/device/device_utility.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? Pallette.primary : Colors.black,
            side: BorderSide(color: dark ? Pallette.primary : Colors.black)),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
