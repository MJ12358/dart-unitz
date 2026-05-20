part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Yocto}
/// The yocto (symbol: y) is a decimal prefix.
/// This denotes a factor of one septillionth.
///
/// https://en.wikipedia.org/wiki/Yocto-
/// {@endtemplate}
class Yocto extends DecimalPrefix {
  /// {@macro dart_unitz.Yocto}
  Yocto();

  @override
  String get name => 'yocto';

  @override
  num get power => 1e-24;

  @override
  String get symbol => 'y';

  @override
  String get word => 'septillionthth';

  @override
  String get pluralWord => 'septillionths';
}
