part of dart_unitz;

/// The base unit for `Length` is the `Metre`
///
///
abstract class Length extends Unit {
  Length([super.value]);

  @override
  Unit get base => Metre();
}
