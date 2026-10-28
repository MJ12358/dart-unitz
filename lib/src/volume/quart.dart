part of '../../dart_unitz.dart';

/// {@template dart_unitz.Quart}
/// The quart, symbol qt, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Quart
/// {@endtemplate}
class Quart extends Volume {
  /// {@macro dart_unitz.Quart}
  Quart([super.value]);

  @override
  String get name => 'Quart';

  @override
  String get pluralName => 'Quarts';

  @override
  String get symbol => 'qt';

  @override
  num get scale => 0.00094635294599999;

  @override
  Quart instance([Object? value]) {
    return Quart(value);
  }
}
