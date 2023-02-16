part of dart_unitz;

/// An extension to provide operators
///
///
extension UnitExtension on Unit {
  Unit operator +(Unit other) {
    final Unit b = fromBase(other.toBase());
    return newInstance(value + b.value);
  }

  Unit operator -(Unit other) {
    final Unit b = fromBase(other.toBase());
    return newInstance(value - b.value);
  }

  Unit operator *(Unit other) {
    final Unit b = fromBase(other.toBase());
    return newInstance(value * b.value);
  }

  Unit operator /(Unit other) {
    final Unit b = fromBase(other.toBase());
    return newInstance(value / b.value);
  }

  Unit operator ~/(Unit other) {
    final Unit b = fromBase(other.toBase());
    return newInstance(value ~/ b.value);
  }

  Unit operator %(Unit other) {
    final Unit b = fromBase(other.toBase());
    return newInstance(value % b.value);
  }

  bool operator <(Unit other) {
    return toBase().value < other.toBase().value;
  }

  bool operator <=(Unit other) {
    return toBase().value <= other.toBase().value;
  }

  bool operator >(Unit other) {
    return toBase().value > other.toBase().value;
  }

  bool operator >=(Unit other) {
    return toBase().value >= other.toBase().value;
  }
}
