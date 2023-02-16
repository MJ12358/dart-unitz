part of dart_unitz;

/// An extension to provide operators on Units
///
///
extension UnitExtension on Unit {
  Unit operator +(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value + b);
  }

  Unit operator -(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value - b);
  }

  Unit operator *(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value * b);
  }

  Unit operator /(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value / b);
  }

  Unit operator ~/(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value ~/ b);
  }

  Unit operator %(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value % b);
  }

  bool operator <(Unit other) {
    final num a = base.newInstance(toBase()).formatted;
    final num b = other.base.newInstance(other.toBase()).formatted;
    return a < b;
  }

  bool operator <=(Unit other) {
    final num a = base.newInstance(toBase()).formatted;
    final num b = other.base.newInstance(other.toBase()).formatted;
    return a <= b;
  }

  bool operator >(Unit other) {
    final num a = base.newInstance(toBase()).formatted;
    final num b = other.base.newInstance(other.toBase()).formatted;
    return a > b;
  }

  bool operator >=(Unit other) {
    final num a = base.newInstance(toBase()).formatted;
    final num b = other.base.newInstance(other.toBase()).formatted;
    return a >= b;
  }
}
