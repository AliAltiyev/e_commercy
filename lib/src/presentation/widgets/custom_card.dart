import 'package:e_commercy/src/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    double? elevation,
    ShapeBorder? shape,
    required Widget child,
  })  : _elevation = elevation,
        _shape = shape,
        _child = child;

  final double? _elevation;
  final ShapeBorder? _shape;
  final Widget? _child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: _child,
      shape: _shape != null
          ? _shape
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ApplicationSize.s8),
            ),
      elevation: _elevation != null ? _elevation : ApplicationSize.s10,
    );
  }
}
