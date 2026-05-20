part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Zetta}
/// The zetta (symbol: Z) is a decimal prefix.
/// This denotes a factor of one sextillion.
///
/// https://en.wikipedia.org/wiki/Zetta-
/// {@endtemplate}
class Zetta extends DecimalPrefix {
  /// {@macro dart_unitz.Zetta}
  Zetta();

  @override
  String get name => 'zetta';

  @override
  num get power => 1e+21;

  @override
  String get symbol => 'Z';

  @override
  String get word => 'sextillion';

  @override
  String get pluralWord => 'sextillions';
}
