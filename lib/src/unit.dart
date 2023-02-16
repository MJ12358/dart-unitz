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

  num get value => _format();

  /// The name of this unit.
  String get name;

  /// The plural name of this unit.
  String get pluralName;

  /// The symbol for this unit.
  String get symbol;

  /// The base unit. Used when creating the "category" unit.
  Unit get base;

  /// Converts this unit to base unit.
  Unit toBase();

  /// Converts from base unit to this unit.
  Unit fromBase(Unit base);

  /// Creates a new instance of this class.
  Unit newInstance([num? value]);

  /// This is used to allow dynamic unit registration.
  Unit Function() tearOff();

  num _format() {
    // TODO: precision dosent seem to be working

    final double mod = math.pow(10, _precision.toDouble()).toDouble();
    final num result = (_value * mod).round().toDouble() / mod;

    // final num result = num.parse(_value.toStringAsFixed(_precision));

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
