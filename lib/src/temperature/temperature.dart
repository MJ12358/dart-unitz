part of dart_unitz;

/// The base unit for `Temperature` is the `Kelvin`
///
///
abstract class Temperature extends Unit {
  Temperature([super.value]);

  @override
  Unit get base => Kelvin();
}
