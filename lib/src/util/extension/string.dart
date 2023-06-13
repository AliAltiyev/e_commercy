import 'dart:js_interop';

extension StringExtension on String? {
  String? orEmpty() => this.isNull ? '' : this;
}
