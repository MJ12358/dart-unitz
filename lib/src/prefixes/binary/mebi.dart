part of dart_unitz;

/// {@template dart_unitz.Mebi}
/// The mebi (symbol: Mi) is a binary prefix.
///
/// https://en.wikipedia.org/wiki/Binary_prefix#mebi
/// {@endtemplate}
class Mebi extends BinaryPrefix {
  /// {@macro dart_unitz.Mebi}
  Mebi();

  @override
  String get name => 'mebi';

  @override
  num get power => 1.048576e+6;

  @override
  String get symbol => 'Mi';

  @override
  String get word => 'million';

  @override
  String get pluralWord => 'millions';
}
