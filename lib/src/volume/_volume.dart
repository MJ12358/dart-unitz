part of '../../dart_unitz.dart';

/// {@template dart_unitz.Volume}
/// The base unit for [Volume] is the [CubicMetre].
///
/// https://en.wikipedia.org/wiki/Volume
/// {@endtemplate}
abstract class Volume extends LinearUnit {
  /// {@macro dart_unitz.Volume}
  Volume([super.value]);

  @override
  CubicMetre get base => CubicMetre();

  @override
  Type get prefixType => DecimalPrefix;

  /// A list of all available [Volume] units.
  static final List<Volume> values = <Volume>[
    CubicFoot(),
    CubicInch(),
    CubicMetre(),
    CubicYard(),
    Cup(),
    FluidOunce(),
    Gallon(),
    Litre(),
    Pint(),
    Quart(),
    Tablespoon(),
    Teaspoon(),
  ];
}
