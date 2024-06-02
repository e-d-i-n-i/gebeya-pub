import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/texts/t_brand_title_text.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/enums.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TBrandTitleWithVerificationIcon extends StatelessWidget {
  const TBrandTitleWithVerificationIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = Pallette.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTextTitle(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify, color: iconColor, size: TSizes.iconXs),
      ],
    );
  }
}
