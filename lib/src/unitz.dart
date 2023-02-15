part of dart_unitz;

/// The entry point for `Unitz`
///
/// Also holds global configuration settings
abstract class Unitz {
  static int precision = 2;
  static bool removeTrailingZeros = true;

  static Unit convert({
    required Unit from,
    required Unit to,
  }) {
    return to.fromBase(from.toBase());
  }
}

/// An abstract class to provide a template for other units
///
///
@immutable
abstract class Unit implements Comparable<Unit> {
  Unit(num? value) : _value = value ?? 0;

  final num _value;
  final int _precision = Unitz.precision;
  final bool _removeTrailingZeros = Unitz.removeTrailingZeros;

  num get value => _format();

  String get name;

  String get symbol;

  Unit get base;

  Unit toBase();

  Unit fromBase(Unit base);

  Unit newInstance([num? value]);

  num _format() {
    final num result = num.parse(_value.toStringAsFixed(_precision));
    if (_removeTrailingZeros) {
      final bool hasTrailingZero = result.truncateToDouble() == result;
      if (hasTrailingZero) {
        return num.parse(result.toStringAsFixed(0));
      }
    }
    return result;
  }

  @override
  int compareTo(Unit other) {
    return toBase().compareTo(other.toBase());
  }

  @override
  String toString() {
    return '$value $symbol';
  }

  @override
  bool operator ==(Object other) =>
      other is Unit &&
      other.value == value &&
      other.name == name &&
      other.symbol == symbol;

  @override
  int get hashCode => Object.hash(value, name, symbol);
}

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
