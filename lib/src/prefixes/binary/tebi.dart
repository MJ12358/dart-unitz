part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Tebi}
/// The tebi (symbol: Ti) is a binary prefix.
///
/// https://en.wikipedia.org/wiki/Binary_prefix#tebi
/// {@endtemplate}
class Tebi extends BinaryPrefix {
  /// {@macro dart_unitz.Tebi}
  Tebi();

  @override
  String get name => 'tebi';

  @override
  num get power => 1.099511627776e+12;

  @override
  String get symbol => 'Ti';

  @override
  String get word => 'trillion';

  @override
  String get pluralWord => 'trillions';
}
