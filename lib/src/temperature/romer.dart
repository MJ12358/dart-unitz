part of '../../dart_unitz.dart';

/// {@template dart_unitz.Romer}
/// The Rømer scale also known as Romer or Roemer,
/// is a temperature scale, based on the freezing point
/// of pure water being 7.5 degrees and the boiling point
/// of water as 60 degrees.
///
/// https://en.wikipedia.org/wiki/Romer_scale
/// {@endtemplate}
class Romer extends Temperature {
  /// {@macro dart_unitz.Romer}
  Romer([super.value]);

  @override
  String get name => 'Rømer';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°Rø';

  @override
  Romer get boiling => Romer(60);

  @override
  Romer get freezing => Romer(7.5);

  @override
  num get scale => 40 / 21;

  @override
  num get offset => 273.15 - 7.5 * scale;

  @override
  Romer instance([Object? value]) {
    return Romer(value);
  }
}
