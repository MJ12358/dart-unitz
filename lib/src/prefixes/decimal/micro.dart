part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Micro}
/// The micro (symbol: μ) is a decimal prefix.
/// This denotes a factor of one millionth.
///
/// https://en.wikipedia.org/wiki/Micro-
/// {@endtemplate}
class Micro extends DecimalPrefix {
  /// {@macro dart_unitz.Micro}
  Micro();

  @override
  String get name => 'micro';

  @override
  num get power => 1e-6;

  @override
  String get symbol => 'μ';

  @override
  String get word => 'millionth';

  @override
  String get pluralWord => 'millionths';
}
