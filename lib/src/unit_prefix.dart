part of dart_unitz;

/// An abstract class to provide a template for unit prefixes.
@immutable
abstract class UnitPrefix {
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

/// An abstract class to provide a template for decimal prefixes.
/// These are commonly called "Metric (SI) prefixes".
///
/// https://en.wikipedia.org/wiki/Metric_prefix
abstract class DecimalPrefix implements UnitPrefix {}

/// An abstract class to provide a template for binary prefixes.
///
/// https://en.wikipedia.org/wiki/Binary_prefix
abstract class BinaryPrefix implements UnitPrefix {}

/// A class used to represent a null/empty prefix
///
/// Usually used when (value <= 9 && value >= 0)
class NullPrefix extends UnitPrefix {
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
