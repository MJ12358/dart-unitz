part of '../dart_unitz.dart';

/// {@template dart_unitz.Unit}
/// An abstract class to provide a template for units.
///
/// https://en.wikipedia.org/wiki/Unit_of_measurement
/// {@endtemplate}
@immutable
abstract class Unit implements Comparable<Unit> {
  /// {@macro dart_unitz.Unit}
  Unit(Object? value) {
    if (value == null) {
      _value = 0;
    } else if (value is num) {
      _value = value;
    } else if (value is String) {
      _value = num.parse(value);
    } else if (value is BigInt) {
      _value = value.toInt();
    } else {
      throw UnsupportedError(
        '${value.runtimeType} is not a supported input.',
      );
    }
  }

  late final num _value;

  /// The precise value.
  num get value => _value;

  /// The name of this unit.
  String get name;

  /// The plural name for this unit.
  String get pluralName;

  /// The symbol for this unit.
  String get symbol;

  /// The common factor for this unit.
  num get factor;

  /// The base unit.
  Unit get base;

  /// Converts this unit to the base unit.
  num toBase();

  /// Converts from the base unit to this unit.
  num fromBase(num base);

  /// Creates a new instance of this class.
  Unit newInstance([Object? value]);

  /// The type of prefix used for this unit.
  Type get prefixType;

  /// The scalar value based on the unit prefix and configuration.
  num get scalar {
    final num result = _rounded;
    if (Unitz.removeTrailingZeros) {
      return _removeTrailingZeros(result);
    }
    return result;
  }

  /// The unit prefix for this [value].
  UnitPrefix get prefix {
    List<UnitPrefix> prefixes = <UnitPrefix>[];

    final Type thePrefixType = Unitz.prefixType != null
        ? Unitz.prefixType!
        : prefixType;

    switch (thePrefixType) {
      case BinaryPrefix:
        prefixes = BinaryPrefix.values;
      case DecimalPrefix:
        prefixes = DecimalPrefix.values;
      case NullPrefix:
        return const NullPrefix();
    }

    return prefixes.firstWhere(
      (UnitPrefix e) {
        return e.power <= _value;
      },
      orElse: NullPrefix.new,
    );
  }

  @override
  int compareTo(Unit other) {
    final num a = base.newInstance(toBase()).scalar;
    final num b = other.base.newInstance(other.toBase()).scalar;
    return a.compareTo(b);
  }

  @override
  String toString() {
    if (Unitz.usePrefix) {
      return '$_mantissa ${prefix.symbol}$symbol';
    }
    return '$scalar $symbol';
  }

  @override
  bool operator ==(Object other) {
    if (other is! Unit) {
      return false;
    }
    final num a = base.newInstance(toBase()).scalar;
    final num b = other.base.newInstance(other.toBase()).scalar;
    return a == b;
  }

  @override
  int get hashCode => Object.hash(value, name, symbol);

  /// Removes trailing zeros from the given value if necessary.
  num _removeTrailingZeros(num v) {
    final bool hasTrailingZero = v.truncateToDouble() == v;
    if (hasTrailingZero) {
      return num.parse(v.toStringAsFixed(0));
    }
    return v;
  }

  /// The mantissa of the value based on the unit prefix power.
  num get _mantissa {
    final num power = prefix.power;
    // Nothing to do for zero or non-finite values
    if (_value == 0 || !_value.isFinite) {
      return _value;
    }
    // calculate the exponent
    num exp = math.log(_value) / math.log(power);
    // sanitize the exponent
    if (exp.isNaN || exp.isInfinite) {
      exp = 1;
    } else {
      exp = exp.floor();
    }
    // divide out the prefix and format the result
    return (_value / math.pow(power, exp)).round();
  }

  /// The value rounded to the configured precision.
  ///
  /// For values greater than or equal to 1,
  /// rounds to the specified number of decimal places.
  ///
  /// For values less than 1,
  /// rounds to the specified number of significant figures.
  num get _rounded {
    final int places = Unitz.precision;
    // Nothing to do for non-positive precision, zero, or non-finite values.
    if (places <= 0 || _value == 0 || !_value.isFinite) {
      return _value;
    }
    // For |value| >= 1, round to decimal places.
    if (_value.abs() >= 1) {
      final double scale = math.pow(10, places).toDouble();
      return (_value * scale).roundToDouble() / scale;
    }
    // For |value| < 1, round to `places` significant figures.
    int exp = (math.log(_value.abs()) / math.ln10).floor();
    // Correct for floating-point drift near exact powers of ten.
    if (_value.abs() >= math.pow(10, exp + 1)) {
      exp += 1;
    } else if (_value.abs() < math.pow(10, exp)) {
      exp -= 1;
    }
    final int shift = places - 1 - exp; // may be positive or negative
    final double scale = math.pow(10, shift).toDouble();
    return (_value * scale).roundToDouble() / scale;
  }
}
