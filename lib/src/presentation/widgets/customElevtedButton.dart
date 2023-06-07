import 'package:e_commercy/src/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required VoidCallback voidCallback,
      required Widget child,
      required Color backgroundColor})
      : _callback = voidCallback,
        _child = child,
        _backgroundColor = backgroundColor;

  final VoidCallback _callback;
  final Widget _child;
  final Color _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _callback,
      child: _child,
      style: ElevatedButton.styleFrom(
          backgroundColor: _backgroundColor,
          elevation: ApplicationSize.s8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ApplicationSize.s8))),
    );
  }
}
