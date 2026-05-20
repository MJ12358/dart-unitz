part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Pico}
/// The pico (symbol: p) is a decimal prefix.
/// This denotes a factor of one trillionth.
///
/// https://en.wikipedia.org/wiki/Pico-
/// {@endtemplate}
class Pico extends DecimalPrefix {
  /// {@macro dart_unitz.Pico}
  Pico();

  @override
  String get name => 'pico';

  @override
  num get power => 1e-12;

  @override
  String get symbol => 'p';

  @override
  String get word => 'trillionth';

  @override
  String get pluralWord => 'trillionths';
}
