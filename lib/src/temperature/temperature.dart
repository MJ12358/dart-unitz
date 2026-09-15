part of '../../dart_unitz.dart';

/// {@template dart_unitz.Temperature}
/// The base unit for [Temperature] is the [Kelvin].
///
/// https://en.wikipedia.org/wiki/Temperature
/// {@endtemplate}
abstract class Temperature extends Unit {
  /// {@macro dart_unitz.Temperature}
  Temperature([super.value]);

  @override
  Unit get base => Kelvin();

  @override
  Type get prefixType => NullPrefix;

  /// A list of all the [Temperature] units.
  static final List<Temperature> values = <Temperature>[
    Celsius(),
    Delisle(),
    Fahrenheit(),
    Kelvin(),
    Rankine(),
    Reaumur(),
    Romer(),
  ];
}
