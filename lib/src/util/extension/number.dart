extension IntExtension on int? {
  int? orZero() => this == null ? 0 : this;
}

extension doubleExtesnion on double? {
  double? orZero() => this == null ? 0 : this;
}
