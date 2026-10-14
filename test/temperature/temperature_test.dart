import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

Map<Unit, Unit> freezingMap = <Unit, Unit>{
  Celsius(): Celsius(0),
  Delisle(): Delisle(150),
  Fahrenheit(): Fahrenheit(32),
  Kelvin(): Kelvin(273.15),
  Rankine(): Rankine(491.67),
  Reaumur(): Reaumur(0),
  Romer(): Romer(7.5),
};

Map<Unit, Unit> boilingMap = <Unit, Unit>{
  Celsius(): Celsius(100),
  Delisle(): Delisle(0),
  Fahrenheit(): Fahrenheit(212),
  Kelvin(): Kelvin(373.15),
  Rankine(): Rankine(671.67),
  Reaumur(): Reaumur(80),
  Romer(): Romer(60),
};

void main() {
  test('equality', () {
    expect(Celsius(0) == Celsius(0), true);
    expect(Celsius(0) != Celsius(100), true);
    expect(Celsius(0) == Fahrenheit(32), true);
    expect(Celsius(0) != Fahrenheit(212), true);
  });

  test('compare', () {
    expect(Celsius(0).compareTo(Celsius(0)), 0);
    expect(Celsius(0).compareTo(Celsius(100)), -1);
    expect(Celsius(100).compareTo(Celsius(0)), 1);
    expect(Celsius(0).compareTo(Fahrenheit(32)), 0);
    expect(Celsius(0).compareTo(Fahrenheit(212)), -1);
    expect(Celsius(100).compareTo(Fahrenheit(32)), 1);
  });

  test('addition', () {
    // for (final Temperature t in Temperature.values) {
    //   expect(t.freezing + Temperature.boilingMap[t]!, t.boiling);
    // }

    for (final Unit t in boilingMap.keys) {
      expect(Celsius(0) + boilingMap[t]!, Celsius(100));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Delisle(150) + boilingMap[t]!, Delisle(150));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Fahrenheit(32) + boilingMap[t]!, Fahrenheit(244));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Kelvin(273.15) + boilingMap[t]!, Kelvin(646.3));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Rankine(491.67) + boilingMap[t]!, Rankine(1163.34));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Reaumur(0) + boilingMap[t]!, Reaumur(80));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Romer(7.5) + boilingMap[t]!, Romer(67.5));
    }
  });

  test('subtraction', () {
    for (final Unit t in boilingMap.keys) {
      expect(Celsius(0) - boilingMap[t]!, Celsius(-100));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Delisle(150) - boilingMap[t]!, Delisle(150));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Fahrenheit(32) - boilingMap[t]!, Fahrenheit(-180));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Kelvin(273.15) - boilingMap[t]!, Kelvin(-100));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Rankine(491.67) - boilingMap[t]!, Rankine(-180));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Reaumur(0) - boilingMap[t]!, Reaumur(-80));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Romer(7.5) - boilingMap[t]!, Romer(-52.5));
    }
  });
}
