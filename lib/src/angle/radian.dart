part of dart_unitz;

/// The radian, denoted by the symbol rad,
/// is the unit of angle in the International System of Units
///
/// https://en.wikipedia.org/wiki/Radian
class Radian extends Angle {
  Radian([super.value]);

  @override
  String get name => 'Radian';

  @override
  String get pluralName => 'Radians';

  @override
  String get symbol => 'rad';

  @override
  num toBase() {
    return value;
  }

  @override
  num fromBase(num base) {
    return base;
  }

  @override
  Unit newInstance([num? value]) {
    return Radian(value);
  }

  @override
  Unit Function() tearOff() {
    return Radian.new;
  }
}
