part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Mega}
/// The mega (symbol: M) is a decimal prefix.
/// This denotes a factor of one million.
///
/// https://en.wikipedia.org/wiki/Mega-
/// {@endtemplate}
class Mega extends DecimalPrefix {
  /// {@macro dart_unitz.Mega}
  Mega();

  @override
  String get name => 'mega';

  @override
  num get power => 1e+6;

  @override
  String get symbol => 'M';

  @override
  String get word => 'million';

  @override
  String get pluralWord => 'millions';
}
