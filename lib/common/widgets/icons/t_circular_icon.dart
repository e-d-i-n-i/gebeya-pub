import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:gebeya_ecommerce_application/utils/helpers/helper_functions.dart';

class TCircularicon extends StatelessWidget {
  /// A custom Circular Icon widget with a background color.
  ///
  /// Properties ane:
//
  /// Container [width], [height], & [backgroundColor].
  ///
  /// Icon's [size], [color] & [onPressed]

  const TCircularicon(
      {super.key,
      this.width,
      this.height,
      this.size = TSizes.lg,
      required this.icon,
      this.color,
      this.backgroundColor,
      this.onPressed});

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : THelperFunctions.isDarkMode(context)
                ? Pallette.black.withOpacity(0.9)
                : Pallette.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
