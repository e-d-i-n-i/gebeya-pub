import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:gebeya_ecommerce_application/features/shop/screens/sub_category/sub_categories.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class THomeCategroies extends StatelessWidget {
  const THomeCategroies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, String> categoryMap = {
      'Clothes': TImages.clothIcon,
      'Electronics': TImages.electronicsIcon,
      "Shoes": TImages.shoeIcon,
      'Cosmetics': TImages.cosmeticsIcon,
      'Sports': TImages.sportIcon,
      'Animals': TImages.animalIcon,
      'Jewelries': TImages.jewelryIcon,
    };

    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categoryMap.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final entry = categoryMap.entries.toList()[index];
          return TVerticalImageText(
            image: entry.value,
            title: entry.key,
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
