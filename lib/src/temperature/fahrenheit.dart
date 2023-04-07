part of dart_unitz;

/// Fahrenheit temperature scale,
/// based on 32° for the freezing point of water
/// and 212° for the boiling point of water,
/// the interval between the two being divided into 180 equal parts.
///
/// https://en.wikipedia.org/wiki/Fahrenheit
class Fahrenheit extends Temperature {
  Fahrenheit([super.value]);

  @override
  String get name => 'Fahrenheit';

  @override
  String get pluralName => name;

  @override
  String get symbol => '°F';

  @override
  num toBase() {
    return (value - 32) * (5 / 9) + 273.15;
  }

  @override
  num fromBase(num base) {
    return (base - 273.15) * (9 / 5) + 32;
  }

  @override
  Unit newInstance([Object? value]) {
    return Fahrenheit(value);
  }
}
