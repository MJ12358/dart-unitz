part of '../../dart_unitz.dart';

/// {@template dart_unitz.Mass}
/// The base unit for [Mass] is the [Kilogram].
///
/// https://en.wikipedia.org/wiki/Mass
/// {@endtemplate}
abstract class Mass extends Unit {
  /// {@macro dart_unitz.Mass}
  Mass([super.value]);

  @override
  Mass get base => Kilogram();

  @override
  Type get prefixType => DecimalPrefix;

  /// A list of all available [Mass] units.
  static final List<Mass> values = <Mass>[
    Gram(),
    Kilogram(),
    Ounce(),
    Pound(),
    Tonne(),
  ];
}
