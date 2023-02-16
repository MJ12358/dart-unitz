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
  Unit toBase() {
    final num result = (value - 32) * (5 / 9) + 273.15;
    return base.newInstance(result);
  }

  @override
  Unit fromBase(Unit base) {
    final num result = (base.value - 273.15) * (9 / 5) + 32;
    return Fahrenheit(result);
  }

  @override
  Unit newInstance([num? value]) {
    return Fahrenheit(value);
  }

  @override
  Unit Function() tearOff() {
    return Fahrenheit.new;
  }
}
