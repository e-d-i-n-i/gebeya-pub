import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class CustomEdgeWidget extends StatelessWidget {
  const CustomEdgeWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}
