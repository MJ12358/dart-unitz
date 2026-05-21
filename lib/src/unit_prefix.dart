part of '../dart_unitz.dart';

/// {@template dart_unitz.UnitPrefix}
/// An abstract class to provide a template for unit prefixes.
/// {@endtemplate}
@immutable
abstract class UnitPrefix {
  /// {@macro dart_unitz.UnitPrefix}
  const UnitPrefix();

  /// The name of this prefix.
  String get name;

  /// The power of this prefix.
  num get power;

  /// The symbol for this prefix.
  String get symbol;

  /// The friendly word (aka numeral/number word) for this prefix.
  String get word;

  /// The plural word for this prefix.
  String get pluralWord;
}

/// {@template dart_unitz.DecimalPrefix}
/// An abstract class to provide a template for decimal prefixes.
/// These are commonly called "Metric (SI) prefixes".
///
/// https://en.wikipedia.org/wiki/Metric_prefix
/// {@endtemplate}
abstract class DecimalPrefix implements UnitPrefix {
  /// {@macro dart_unitz.DecimalPrefix}
  const DecimalPrefix();
}

/// {@template dart_unitz.BinaryPrefix}
/// An abstract class to provide a template for binary prefixes.
/// These are sometimes referred to as "IEC prefixes".
///
/// https://en.wikipedia.org/wiki/Binary_prefix
/// {@endtemplate}
abstract class BinaryPrefix implements UnitPrefix {
  /// {@macro dart_unitz.BinaryPrefix}
  const BinaryPrefix();
}

/// {@template dart_unitz.NullPrefix}
/// A class used to represent a null/empty prefix.
///
/// Usually used when `value <= 9 && value >= 0`
/// {@endtemplate}
class NullPrefix extends UnitPrefix {
  /// {@macro dart_unitz.NullPrefix}
  const NullPrefix();

  @override
  String get name => '';

  @override
  num get power => 1;

  @override
  String get symbol => '';

  @override
  String get word => '';

  @override
  String get pluralWord => '';
}
