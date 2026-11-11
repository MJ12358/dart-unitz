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
        throw ArgumentError('Invalid numeric value, $value', 'value');
      }
      return value;
    }
    // String check.
    if (value is String) {
      try {
        return num.parse(value);
      } on FormatException {
        throw ArgumentError('Cannot parse "$value" as a number.', 'value');
      }
    }
    // BigInt check.
    if (value is BigInt) {
      return value.toInt();
    }
    // Unsupported type.
    throw UnsupportedError(
      '${value.runtimeType} is not a supported input.',
    );
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
    final num result = rounded;
    if (Unitz.removeTrailingZeros) {
      return removeTrailingZeros(result);
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

  @override
  int compareTo(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a.compareTo(b);
  }

  @override
  /// Equality is *approximate*: it compares base-unit values rounded to
  /// [Unitz.precision]. Equality is symmetric and reflexive,
  /// but **not transitive** at rounding boundaries.
  bool operator ==(Object other) {
    if (other is! Unit) {
      return false;
    }
    if (base.runtimeType != other.base.runtimeType) {
      return false;
    }
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a == b;
  }

  @override
  int get hashCode =>
      Object.hash(base.runtimeType, base.instance(toBase()).scalar);
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
