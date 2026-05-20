part of '../../../dart_unitz.dart';

/// {@template dart_unitz.Gibi}
/// The gibi (symbol: Gi) is a binary prefix.
///
/// https://en.wikipedia.org/wiki/Binary_prefix#gibi
/// {@endtemplate}
class Gibi extends BinaryPrefix {
  /// {@macro dart_unitz.Gibi}
  Gibi();

  @override
  String get name => 'gibi';

  @override
  num get power => 1.073741824e+9;

  @override
  String get symbol => 'Gi';

  @override
  String get word => 'billion';

  @override
  String get pluralWord => 'billions';
}
