import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/appbar/appbar.dart';
import 'package:gebeya_ecommerce_application/common/widgets/brands/brand_card.dart';
import 'package:gebeya_ecommerce_application/common/widgets/products/sortable/sortable_products.dart';
import 'package:gebeya_ecommerce_application/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              TBrandCard(showBoarder: true),
              SizedBox(height: TSizes.spaceBtwSections),

              SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
