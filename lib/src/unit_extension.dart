part of '../dart_unitz.dart';

/// An extension to provide operators on [Unit]s.
extension UnitExtension on Unit {
  /// Adds two units together.
  Unit operator +(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value + b);
  }

  /// Subtracts two units.
  Unit operator -(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value - b);
  }

  /// Multiplies two units together.
  Unit operator *(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value * b);
  }

  /// Divides two units.
  Unit operator /(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value / b);
  }

  /// Integer divides two units.
  Unit operator ~/(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value ~/ b);
  }

  /// Modulo operator for two units.
  Unit operator %(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value % b);
  }

  /// Negates the unit.
  Unit operator -() {
    return instance(-value);
  }

  /// Less than operator for two units.
  bool operator <(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a < b;
  }

  /// Less than or equal to operator for two units.
  bool operator <=(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a <= b;
  }

  /// Greater than operator for two units.
  bool operator >(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a > b;
  }

  /// Greater than or equal to operator for two units.
  bool operator >=(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a >= b;
  }

  /// Removes trailing zeros from the given value if necessary.
  num removeTrailingZeros(num v) {
    final bool hasTrailingZero = v.truncateToDouble() == v;
    if (hasTrailingZero) {
      return num.parse(v.toStringAsFixed(0));
    }
    return v;
  }

  /// The mantissa of the value based on the unit prefix power.
  num get mantissa {
    final num power = prefix.power;
    // Nothing to do for zero or non-finite values
    if (value == 0 || !value.isFinite) {
      return value;
    }
    // calculate the exponent
    num exp = math.log(value) / math.log(power);
    // sanitize the exponent
    exp = exp.isFinite ? exp.floor() : exp;
    // divide out the prefix and format the result
    return (value / math.pow(power, exp)).round();
  }

  /// The value rounded to the configured precision.
  ///
  /// For values greater than or equal to 1,
  /// rounds to the specified number of decimal places.
  ///
  /// For values less than 1,
  /// rounds to the specified number of significant figures.
  num get rounded {
    final int places = Unitz.precision;
    // Nothing to do for non-positive precision, zero, or non-finite values.
    if (places <= 0 || value == 0 || !value.isFinite) {
      return value;
    }
    // For |value| >= 1, round to decimal places.
    if (value.abs() >= 1) {
      final double placesScale = math.pow(10, places).toDouble();
      return (value * placesScale).roundToDouble() / placesScale;
    }
    // For |value| < 1, round to `places` significant figures.
    int exp = (math.log(value.abs()) / math.ln10).floor();
    // Correct for floating-point drift near exact powers of ten.
    final double expScale = math.pow(10, exp).toDouble();
    final double mantissa = value.abs() / expScale;
    if (mantissa >= 10) {
      exp += 1;
    } else if (mantissa < 1) {
      exp -= 1;
    }
    final int shift = places - 1 - exp; // may be positive or negative
    final double shiftScale = math.pow(10, shift).toDouble();
    return (value * shiftScale).roundToDouble() / shiftScale;
  }
}

/// An extension to provide additional functionality on [List<Unit>].
extension UnitListExtension on List<Unit> {
  /// Returns the names of all units in the list.
  List<String> get names {
    return map((Unit unit) => unit.name).toList();
  }
}

/// An extension to provide additional functionality on [List<UnitPrefix>].
extension UnitPrefixListExtension on List<UnitPrefix> {
  /// Returns the names of all unit prefixes in the list.
  List<String> get names {
    return map((UnitPrefix prefix) => prefix.name).toList();
  }
}
