part of '../../dart_unitz.dart';

/// {@template dart_unitz.Temperature}
/// The base unit for [Temperature] is the [Kelvin].
///
/// https://en.wikipedia.org/wiki/Temperature
/// {@endtemplate}
abstract class Temperature extends AffineUnit {
  /// {@macro dart_unitz.Temperature}
  Temperature([super.value]);

  /// The point at which water boils.
  Temperature get boiling;

  /// The point at which water freezes.
  Temperature get freezing;

  @override
  Kelvin get base => Kelvin();

  @override
  Type get prefixType => NullPrefix;

  /// A list of all available [Temperature] units.
  static final List<Temperature> values = <Temperature>[
    Celsius(),
    Delisle(),
    Fahrenheit(),
    Kelvin(),
    Rankine(),
    Reaumur(),
    Romer(),
  ];

  /// A map of all the [Temperature] units by their boiling points.
  static final Map<Temperature, Temperature> boilingMap =
      <Temperature, Temperature>{
        for (final Temperature t in values) t: t.boiling,
      };

  /// A map of all the [Temperature] units by their freezing points.
  static final Map<Temperature, Temperature> freezingMap =
      <Temperature, Temperature>{
        for (final Temperature t in values) t: t.freezing,
      };
}
