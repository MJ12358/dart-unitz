part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Giga}
/// The giga (symbol: G) is a decimal prefix.
/// This denotes a factor of one billion.
///
/// https://en.wikipedia.org/wiki/Giga-
/// {@endtemplate}
class Giga extends DecimalPrefix {
  /// {@macro dart_unitz.Giga}
  Giga();

  @override
  String get name => 'giga';

  @override
  num get power => 1e+9;

  @override
  String get symbol => 'G';

  @override
  String get word => 'billion';

  @override
  String get pluralWord => 'billions';
}
