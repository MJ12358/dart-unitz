part of '../../dart_unitz.dart';

/// {@template dart_unitz.Volume}
/// The base unit for [Volume] is the [CubicMetre].
///
/// https://en.wikipedia.org/wiki/Volume
/// {@endtemplate}
abstract class Volume extends Unit {
  /// {@macro dart_unitz.Volume}
  Volume([super.value]);

  @override
  Unit get base => CubicMetre();

  @override
  Type get prefixType => DecimalPrefix;

  /// A list of all available [Volume] units.
  static final List<Volume> values = <Volume>[
    CubicInch(),
    CubicMetre(),
    CubicFoot(),
    CubicYard(),
    Litre(),
    Tablespoon(),
    Teaspoon(),
    Cup(),
  ];
}
