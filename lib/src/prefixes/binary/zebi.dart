part of dart_unitz;

/// {@template dart_unitz.Zebi}
/// The zebi (symbol: Zi) is a binary prefix.
///
/// https://en.wikipedia.org/wiki/Binary_prefix#zebi
/// {@endtemplate}
class Zebi extends BinaryPrefix {
  /// {@macro dart_unitz.Zebi}
  Zebi();

  @override
  String get name => 'zebi';

  @override
  num get power => 1.180591620717411303424e+21;

  @override
  String get symbol => 'Zi';

  @override
  String get word => 'sextillion';

  @override
  String get pluralWord => 'sextillions';
}
