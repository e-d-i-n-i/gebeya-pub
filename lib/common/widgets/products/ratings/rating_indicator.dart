import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: Pallette.grey,
      itemBuilder: (_, __) =>
          const Icon(Iconsax.star_1, color: Pallette.primary),
    );
  }
}
