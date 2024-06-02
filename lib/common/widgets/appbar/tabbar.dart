import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/device/device_utility.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget.
  /// To do that we need [PreferredSized] Widget and that's why created custom class. [PreferredSizeWidget]
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? Pallette.black : Pallette.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: Pallette.primary,
        labelColor: dark ? Pallette.white : Pallette.primary,
        unselectedLabelColor: Pallette.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
