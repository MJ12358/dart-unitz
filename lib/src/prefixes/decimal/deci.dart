part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Deci}
/// The deci (symbol: d) is a decimal prefix.
/// This denotes a factor of one tenth.
///
/// https://en.wikipedia.org/wiki/Deci-
/// {@endtemplate}
class Deci extends DecimalPrefix {
  /// {@macro dart_unitz.Deci}
  Deci();

  @override
  String get name => 'deci';

  @override
  num get power => 1e-1;

  @override
  String get symbol => 'd';

  @override
  String get word => 'tenth';

  @override
  String get pluralWord => 'tenths';
}
