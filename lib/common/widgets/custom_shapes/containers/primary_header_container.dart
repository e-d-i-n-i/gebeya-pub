import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
    this.height = 400,
  });
  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return CustomEdgeWidget(
      child: Container(
        color: Pallette.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              // Background custom shapes
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                    backgroundColor: Pallette.textWhite.withOpacity(0.1)),
              ),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CircularContainer(
                      backgroundColor: Pallette.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
