part of '../../dart_unitz.dart';

/// {@template dart_unitz.Gram}
/// The gram, symbol g, is a unit of mass.
///
/// https://en.wikipedia.org/wiki/Gram
/// {@endtemplate}
class Gram extends Mass {
  /// {@macro dart_unitz.Gram}
  Gram([super.value]);

  @override
  String get name => 'Gram';

  @override
  String get pluralName => 'Grams';

  @override
  String get symbol => 'g';

  @override
  num get scale => 0.001;

  @override
  Unit instance([Object? value]) {
    return Gram(value);
  }
}
