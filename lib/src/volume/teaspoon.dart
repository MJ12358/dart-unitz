part of '../../dart_unitz.dart';

/// {@template dart_unitz.Teaspoon}
/// The teaspoon, symbol tsp, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Teaspoon
/// {@endtemplate}
class Teaspoon extends Volume {
  /// {@macro dart_unitz.Teaspoon}
  Teaspoon([super.value]);

  @override
  String get name => 'Teaspoon';

  @override
  String get pluralName => 'Teaspoons';

  @override
  String get symbol => 'tsp';

  @override
  num get scale => 0.000004928921594;

  @override
  Teaspoon instance([Object? value]) {
    return Teaspoon(value);
  }
}
