part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Centi}
/// The centi (symbol: c) is a decimal prefix.
/// This denotes a factor of one hundredth.
///
/// https://en.wikipedia.org/wiki/Centi-
/// {@endtemplate}
class Centi extends DecimalPrefix {
  /// {@macro dart_unitz.Centi}
  Centi();

  @override
  String get name => 'centi';

  @override
  num get power => 1e-2;

  @override
  String get symbol => 'c';

  @override
  String get word => 'hundredth';

  @override
  String get pluralWord => 'hundredths';
}
