part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Deca}
/// The deca (symbol: da) is a decimal prefix.
/// This denotes a factor of ten.
///
/// https://en.wikipedia.org/wiki/Deca-
/// {@endtemplate}
class Deca extends DecimalPrefix {
  /// {@macro dart_unitz.Deca}
  Deca();

  @override
  String get name => 'deca';

  @override
  num get power => 1e+1;

  @override
  String get symbol => 'da';

  @override
  String get word => 'ten';

  @override
  String get pluralWord => 'tens';
}
