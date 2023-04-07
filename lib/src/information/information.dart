part of dart_unitz;

/// The base unit for `Information` is the `Bit`.
abstract class Information extends Unit {
  Information([super.value]);

  @override
  Unit get base => Bit();

  // TODO: need to allow changing of the prefix type
  @override
  Type get prefixType => BinaryPrefix;
}
