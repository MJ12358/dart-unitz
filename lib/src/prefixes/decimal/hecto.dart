part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Hecto}
/// The hecto (symbol: h) is a decimal prefix.
/// This denotes a factor of one hundred.
///
/// https://en.wikipedia.org/wiki/Hecto-
/// {@endtemplate}
class Hecto extends DecimalPrefix {
  /// {@macro dart_unitz.Hecto}
  Hecto();

  @override
  String get name => 'hecto';

  @override
  num get power => 1e+2;

  @override
  String get symbol => 'h';

  @override
  String get word => 'hundred';

  @override
  String get pluralWord => 'hundreds';
}
