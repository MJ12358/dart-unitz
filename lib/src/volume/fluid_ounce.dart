part of '../../dart_unitz.dart';

/// {@template dart_unitz.FluidOunce}
/// The fluid ounce, symbol fl oz, is a unit of volume.
///
/// https://en.wikipedia.org/wiki/Fluid_ounce
/// {@endtemplate}
class FluidOunce extends Volume {
  /// {@macro dart_unitz.FluidOunce}
  FluidOunce([super.value]);

  @override
  String get name => 'Fluid Ounce';

  @override
  String get pluralName => 'Fluid Ounces';

  @override
  String get symbol => 'fl oz';

  @override
  num get scale => 0.000029573529564;

  @override
  Unit instance([Object? value]) {
    return FluidOunce(value);
  }
}
