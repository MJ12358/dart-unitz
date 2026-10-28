part of '../dart_unitz.dart';

/// {@template dart_unitz.Unitz}
/// The entry point for [Unitz].
///
/// Also holds global configuration settings.
/// {@endtemplate}
abstract class Unitz {
  /// {@macro dart_unitz.Unitz}
  const Unitz._();

  /// The number of decimal places to represent.
  ///
  /// Applies when retrieving the [Unit.scalar] value.
  ///
  /// But also applies to [Unit.compareTo],
  /// [Unit.==] and other operators.
  static int get precision {
    return _precision;
  }

  static set precision(int value) {
    if (value < 0) {
      throw ArgumentError('Precision must be non-negative.');
    }
    if (value > 308) {
      throw ArgumentError('Precision must be less than 308.');
    }
    _precision = value;
  }

  static int _precision = 2;

  /// Used to strip trailing zeros from the [Unit.scalar] value.
  static bool removeTrailingZeros = true;

  /// Uses a [UnitPrefix] when required.
  static bool get usePrefix {
    return _usePrefix || prefixType != null;
  }

  static set usePrefix(bool value) {
    _usePrefix = value;
  }

  static bool _usePrefix = false;

  /// The [Type] of unit prefix to use.
  ///
  /// Each unit category has a default unit prefix.
  /// You can override it by setting this property.
  static Type? prefixType;

  /// Convert from one unit to another.
  ///
  /// The [from] Unit is the unit you want to convert from.
  ///
  /// The [to] Unit is the type you'd like to convert to.
  static Unit convert({
    required Unit from,
    required Unit to,
  }) {
    final num base = from.toBase();
    final num result = to.fromBase(base);
    return to.instance(result);
  }

  /// The list of all unit categories available in Unitz.
  static final List<Type> categories = <Type>[
    Angle,
    Information,
    Length,
    Mass,
    Temperature,
    Time,
    Volume,
  ];
}
