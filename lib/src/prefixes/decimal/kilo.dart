part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Kilo}
/// The kilo (symbol: k) is a decimal prefix.
/// This denotes a factor of one thousand.
///
/// https://en.wikipedia.org/wiki/Kilo-
/// {@endtemplate}
class Kilo extends DecimalPrefix {
  /// {@macro dart_unitz.Kilo}
  Kilo();

  @override
  String get name => 'kilo';

  @override
  num get power => 1e+3;

  @override
  String get symbol => 'k';

  @override
  String get word => 'thousand';

  @override
  String get pluralWord => 'thousands';
}
