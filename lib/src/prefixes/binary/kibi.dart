part of dart_unitz;

/// {@template dart_unitz.Kibi}
/// The kibi (symbol: Ki) is a binary prefix.
///
/// https://en.wikipedia.org/wiki/Binary_prefix#kibi
/// {@endtemplate}
class Kibi extends BinaryPrefix {
  /// {@macro dart_unitz.Kibi}
  Kibi();

  @override
  String get name => 'kibi';

  @override
  num get power => 1.024e+3;

  @override
  String get symbol => 'Ki';

  @override
  String get word => 'thousand';

  @override
  String get pluralWord => 'thousands';
}
