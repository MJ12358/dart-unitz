part of dart_unitz;

/// The base unit for `Angle` is the `Radian`
///
///
abstract class Angle extends Unit {
  Angle([super.value]);

  @override
  Unit get base => Radian();
}
