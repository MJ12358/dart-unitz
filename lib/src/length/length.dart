part of dart_unitz;

/// {@template dart_unitz.Length}
/// The base unit for [Length] is the [Metre].
/// {@endtemplate}
abstract class Length extends Unit {
  /// {@macro dart_unitz.Length}
  Length([super.value]);

  @override
  Unit get base => Metre();

  @override
  Type get prefixType => DecimalPrefix;
}
