import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/appbar/appbar.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: Pallette.grey)),
          Text(TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Pallette.white)),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
          iconColor: Pallette.white,
        ),
      ], // TAppBar
    );
  }
}
