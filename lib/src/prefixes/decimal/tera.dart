part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Tera}
/// The tera (symbol: T) is a decimal prefix.
/// This denotes a factor of one trillion.
///
/// https://en.wikipedia.org/wiki/Tera-
/// {@endtemplate}
class Tera extends DecimalPrefix {
  /// {@macro dart_unitz.Tera}
  Tera();

  @override
  String get name => 'tera';

  @override
  num get power => 1e+12;

  @override
  String get symbol => 'T';

  @override
  String get word => 'trillion';

  @override
  String get pluralWord => 'trillions';
}
