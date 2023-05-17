part of dart_unitz;

/// {@template dart_unitz.Angle}
/// The base unit for [Angle] is the [Radian].
/// {@endtemplate}
abstract class Angle extends Unit {
  /// {@macro dart_unitz.Angle}
  Angle([super.value]);

  @override
  Unit get base => Radian();

  @override
  Type get prefixType => NullPrefix;
}
