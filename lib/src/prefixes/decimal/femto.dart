part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Femto}
/// The femto (symbol: f) is a decimal prefix.
/// This denotes a factor of one quadrillionth.
///
/// https://en.wikipedia.org/wiki/Metric_prefix#femto
/// {@endtemplate}
class Femto extends DecimalPrefix {
  /// {@macro dart_unitz.Femto}
  Femto();

  @override
  String get name => 'femto';

  @override
  num get power => 1e-15;

  @override
  String get symbol => 'f';

  @override
  String get word => 'quadrillionth';

  @override
  String get pluralWord => 'quadrillionths';
}
