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
  num get factor => 0.000029573529564;

  @override
  num toBase() {
    return value * factor;
  }

  @override
  num fromBase(num base) {
    return base / factor;
  }

  @override
  Unit newInstance([Object? value]) {
    return FluidOunce(value);
  }
}
