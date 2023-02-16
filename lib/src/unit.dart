part of dart_unitz;

/// An abstract class to provide a template for other units
///
///
@immutable
abstract class Unit implements Comparable<Unit> {
  Unit(num? value) : _value = value ?? 0 {
    Unitz._registration.putIfAbsent(runtimeType, tearOff);
  }

  final num _value;
  final int _precision = Unitz.precision;
  final bool _removeTrailingZeros = Unitz.removeTrailingZeros;

  /// The precise value
  num get value => _value;

  /// The name of this unit.
  String get name;

  /// The plural name of this unit.
  String get pluralName;

  /// The symbol for this unit.
  String get symbol;

  /// The base unit
  Unit get base;

  /// Converts this unit to the base unit.
  num toBase();

  /// Converts from the base unit to this unit.
  num fromBase(num base);

  /// Creates a new instance of this class.
  Unit newInstance([num? value]);

  /// This is used to allow dynamic unit registration.
  /// This is done by using the `Unit.new` syntax
  Unit Function() tearOff();

  /// The formatted value
  num get formatted {
    final double mod = math.pow(10, _precision.toDouble()).toDouble();
    final num result = (_value * mod).round().toDouble() / mod;

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
    final num a = base.newInstance(toBase()).formatted;
    final num b = other.base.newInstance(other.toBase()).formatted;
    return a.compareTo(b);
  }

  @override
  String toString() {
    return '$formatted $symbol';
  }

  @override
  bool operator ==(Object other) {
    if (other is! Unit) {
      return false;
    }
    final num a = base.newInstance(toBase()).formatted;
    final num b = other.base.newInstance(other.toBase()).formatted;
    return a == b;
  }

  @override
  int get hashCode => Object.hash(value, name, symbol);
}
