part of dart_unitz;

/// {@template dart_unitz.Temperature}
/// The base unit for [Temperature] is the [Kelvin].
/// {@endtemplate}
abstract class Temperature extends Unit {
  /// {@macro dart_unitz.Temperature}
  Temperature([super.value]);

  @override
  Unit get base => Kelvin();

  @override
  // most temperatures do not get prefixed.
  Type get prefixType => NullPrefix;
}
