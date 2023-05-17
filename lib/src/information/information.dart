part of dart_unitz;

/// {@template dart_unitz.Information}
/// The base unit for [Information] is the [Bit].
/// {@endtemplate}
abstract class Information extends Unit {
  /// {@macro dart_unitz.Information}
  Information([super.value]);

  @override
  Unit get base => Bit();

  // TODO: need to allow changing of the prefix type
  @override
  Type get prefixType => BinaryPrefix;
}
