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
  /// This applies when retrieving the `formatted` value.
  /// But also applies to `compareTo`, `==` and other operators.
  static int precision = 2;

  /// Used to strip trailing zeros from the `formatted` value.
  static bool removeTrailingZeros = true;

  /// Uses a [UnitPrefix] when required.
  static bool usePrefix = false;

  /// Convert from one unit to another.
  ///
  /// The [from] Unit should have a value.
  ///
  /// The [to] Unit is the type you'd like to convert to.
  static Unit convert({
    required Unit from,
    required Unit to,
  }) {
    final num base = from.toBase();
    final num result = to.fromBase(base);
    return to.newInstance(result);
  }

  /// The list of all unit categories available in Unitz.
  static final List<Type> categories = <Type>[
    Angle,
    Information,
    Length,
    Temperature,
    Time,
  ];
}
