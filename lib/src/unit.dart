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

  /// The formatted value.
  ///
  /// Taking into account your [Unitz] configuration.
  num get formatted {
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
    final num a = base.newInstance(toBase()).formatted;
    final num b = other.base.newInstance(other.toBase()).formatted;
    return a.compareTo(b);
  }

  @override
  String toString() {
    if (Unitz.usePrefix) {
      return '$_mantissa ${prefix.symbol}$symbol';
    }
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

  /// The value rounded to the configured precision.
  num get _rounded {
    final int places = Unitz.precision;
    if (places <= 0) {
      return _value.roundToDouble();
    }
    final double scale = math.pow(10, places).toDouble();
    return (_value * scale).roundToDouble() / scale;
  }

  /// Removes trailing zeros from the given value if necessary.
  num _removeTrailingZeros(num v) {
    final bool hasTrailingZero = v.truncateToDouble() == v;
    if (hasTrailingZero) {
      return num.parse(v.toStringAsFixed(0));
    }
    return v;
  }

  /// The mantissa of the value based on the unit prefix power.
  String get _mantissa {
    final num power = prefix.power;
    // calculate the exponent
    num exp = math.log(_value) / math.log(power);
    // sanitize the exponent
    if (exp.isNaN || exp.isInfinite) {
      exp = 1;
    } else {
      exp = exp.floor();
    }
    // divide out the prefix and format the result
    return (_value / math.pow(power, exp)).toStringAsFixed(0);
  }
}
