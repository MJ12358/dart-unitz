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

  /// A list of all decimal prefixes, ordered from largest to smallest.
  static final List<UnitPrefix> decimalPrefixes = <UnitPrefix>[
    Quetta(),
    Ronna(),
    Yotta(),
    Zetta(),
    Exa(),
    Peta(),
    Tera(),
    Giga(),
    Mega(),
    Kilo(),
    Hecto(),
    Deca(),
    const NullPrefix(),
    Deci(),
    Centi(),
    Milli(),
    Micro(),
    Nano(),
    Pico(),
    Femto(),
    Atto(),
    Zepto(),
    Yocto(),
    Ronto(),
    Quecto(),
  ];

  /// A list of all binary prefixes, ordered from largest to smallest.
  static final List<UnitPrefix> binaryPrefixes = <UnitPrefix>[
    Yobi(),
    Zebi(),
    Exbi(),
    Pebi(),
    Tebi(),
    Gibi(),
    Mebi(),
    Kibi(),
    const NullPrefix(),
  ];
}
