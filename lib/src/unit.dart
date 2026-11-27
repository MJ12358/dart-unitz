part of '../dart_unitz.dart';

/// {@template dart_unitz.Unit}
/// An abstract class to provide a template for units.
///
/// https://en.wikipedia.org/wiki/Unit_of_measurement
/// {@endtemplate}
@immutable
abstract class Unit implements Comparable<Unit> {
  /// {@macro dart_unitz.Unit}
  Unit(Object? value) : _value = _parse(value);

  /// Parses the input [value] into a numeric representation.
  static num _parse(Object? value) {
    // Null check.
    if (value == null) {
      return 0;
    }
    // Num check.
    if (value is num) {
      if (value.isNaN || value.isInfinite) {
        throw UnitException.invalidNumeric(value);
      }
      return value;
    }
    // String check.
    if (value is String) {
      try {
        final num result = num.parse(value);
        if (result.isNaN || result.isInfinite) {
          throw UnitException.invalidString(value);
        }
        return result;
      } on FormatException {
        throw UnitException.cannotParse(value);
      }
    }
    // BigInt check.
    if (value is BigInt) {
      return value.toInt();
    }
    // Unsupported type.
    throw UnitException.unsupportedType(value);
  }

  /// The internal numeric representation of this unit's value.
  final num _value;

  /// The precise value.
  num get value => _value;

  /// The name of this unit.
  String get name;

  /// The plural name for this unit.
  String get pluralName;

  /// The symbol for this unit.
  String get symbol;

  /// The multiplicative scale applied to [value]
  /// when converting to the base unit.
  num get scale;

  /// The additive offset applied when converting to the base unit.
  num get offset;

  /// Whether converting this unit to the base unit is an affine
  /// transformation or a purely linear one.
  @nonVirtual
  bool get isAffine => offset != 0;

  /// The base unit.
  Unit get base;

  /// Converts this unit to the base unit.
  num toBase();

  /// Converts from the base unit to this unit.
  num fromBase(num baseValue);

  /// Creates a new instance of this class.
  Unit instance([Object? value]);

  /// The type of prefix used for this unit.
  Type get prefixType;

  /// The scalar value based on the unit prefix and configuration.
  num get scalar {
    if (Unitz.removeTrailingZeros) {
      return removeTrailingZeros(_rounded);
    }
    return _rounded;
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
      (UnitPrefix e) => e.power <= _value.abs(),
      orElse: NullPrefix.new,
    );
  }

  @override
  String toString() {
    if (Unitz.usePrefix) {
      return '$mantissa ${prefix.symbol}$symbol';
    }
    return '$scalar $symbol';
  }

  /// Compares this unit to [other].
  ///
  /// Within the same unit family (same [base] runtime type), the comparison
  /// is by base-unit scalar value, rounded to [Unitz.precision] — consistent
  /// with [==].
  ///
  /// Across families, the order is **unspecified** (it is deterministic within
  /// a single program run but not semantically meaningful). This ensures
  /// `compareTo == 0` iff `==`, per the [Comparable] contract, without throwing
  /// on mixed-family comparisons.
  @override
  int compareTo(Unit other) {
    final Type aType = base.runtimeType;
    final Type bType = other.base.runtimeType;
    if (aType != bType) {
      // Cross-family: order by a stable family key, then by identity
      // to break any hashCode ties deterministically.
      final int byHash = aType.hashCode.compareTo(bType.hashCode);
      if (byHash != 0) {
        return byHash;
      }
      // hashCode collision between distinct types:
      // fall back to identityHashCode,
      // which is unique per object within a process.
      return identityHashCode(aType).compareTo(identityHashCode(bType));
    }
    // Same family: compare base scalars, consistent with ==.
    return _baseScalar.compareTo(other._baseScalar);
  }

  /// Equality is *approximate*: it compares base-unit values rounded to
  /// [Unitz.precision]. Equality is symmetric and reflexive,
  /// but **not transitive** at rounding boundaries.
  @override
  bool operator ==(Object other) {
    return other is Unit &&
        base.runtimeType == other.base.runtimeType &&
        _baseScalar == other._baseScalar;
  }

  /// Returns a hash code based on the base unit type and its scalar value.
  @override
  int get hashCode => Object.hash(base.runtimeType, _baseScalar);

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
    // Nothing to do for zero or non-finite values
    if (value == 0 || !value.isFinite) {
      return value;
    }
    final num power = prefix.power;
    if (power == 1) {
      return value;
    }
    return (value / power).round();
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
    if (places <= 0 || value == 0 || !value.isFinite) {
      return value;
    }
    if (value.abs() >= 1) {
      return _roundToDecimalPlaces(places);
    } else {
      return _roundToSignificantFigures(places);
    }
  }

  /// Rounds the value to the specified number of decimal places.
  num _roundToDecimalPlaces(int places) {
    // Beyond 2^53 doubles have no fractional bits
    if (value.abs() >= math.pow(2.0, _maxExponent) / math.pow(10.0, places)) {
      return value;
    }
    final double placesScale = math.pow(10.0, places).toDouble();
    return (value * placesScale).roundToDouble() / placesScale;
  }

  /// Rounds the value to the specified number of significant figures.
  num _roundToSignificantFigures(int places) {
    int exp = (math.log(value.abs()) / math.ln10).floor();
    // Correct for floating-point drift near exact powers of ten.
    final double expScale = math.pow(10.0, exp).toDouble();
    final double mantissa = value.abs() / expScale;
    if (mantissa >= 10) {
      exp += 1;
    } else if (mantissa < 1) {
      exp -= 1;
    }
    final int shift = places - 1 - exp; // may be positive or negative
    if (shift > _maxDecimal || shift < -_maxDecimal) {
      return value;
    }
    final double shiftScale = math.pow(10.0, shift).toDouble();
    return (value * shiftScale).roundToDouble() / shiftScale;
  }

  /// The scalar value of this unit expressed in its base unit.
  ///
  /// Used as the comparison key by [compareTo], [==], and the relational
  /// operators, so all of them agree on equality.
  num get _baseScalar => base.instance(toBase()).scalar;
}

/// {@template dart_unitz.LinearUnit}
/// An abstract class to provide a template for linear units.
///
/// Linear units have a zero offset and their conversion to the base unit
/// is purely multiplicative.
/// {@endtemplate}
abstract class LinearUnit extends Unit {
  /// {@macro dart_unitz.LinearUnit}
  LinearUnit([super.value]);

  @override
  num get offset => 0;

  @override
  num toBase() {
    return value * scale;
  }

  @override
  num fromBase(num baseValue) {
    return baseValue / scale;
  }
}

/// {@template dart_unitz.AffineUnit}
/// An abstract class to provide a template for affine units.
///
/// Affine units have a non-zero offset and their conversion to the base unit
/// involves both a multiplicative scale and an additive offset.
/// {@endtemplate}
abstract class AffineUnit extends Unit {
  /// {@macro dart_unitz.AffineUnit}
  AffineUnit([super.value]);

  @override
  num get offset;

  @override
  num toBase() {
    return value * scale + offset;
  }

  @override
  num fromBase(num baseValue) {
    return (baseValue - offset) / scale;
  }
}
