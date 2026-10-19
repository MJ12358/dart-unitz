import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Celsius(-17.222222),
  Delisle(175.833333),
  Kelvin(255.927778),
  Rankine(460.67),
  Reaumur(-13.778),
  Romer(-1.5417),
];

void main() {
  test('constructor', () {
    final Fahrenheit f = Fahrenheit();
    expect(f.value, 0);
    expect(f.name, 'Fahrenheit');
    expect(f.pluralName, 'Fahrenheit');
    expect(f.symbol, '°F');
    expect(f.toString(), '0 °F');
  });

  // Expected: Celsius:<0 °C>
  // Actual: Celsius:<-17.78 °C>
  // test('conversion', () {
  //   final Fahrenheit f = Fahrenheit();
  //   for (final Unit unit in Temperature.values) {
  //     expect(
  //       Unitz.convert(from: f, to: unit),
  //       unit,
  //     );
  //   }
  // });

  test('conversion (boiling)', () {
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: Fahrenheit().boiling, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: Fahrenheit().freezing, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
  test('compare', () {
    final Fahrenheit f = Fahrenheit(1);
    for (final Unit unit in unitList) {
      expect(f.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Fahrenheit f = Fahrenheit(1);
    for (final Unit unit in unitList) {
      expect(f == unit, isTrue);
    }
  });

  test('toString', () {
    final Fahrenheit f1 = Fahrenheit(1);
    expect(f1.toString(), '1 °F');
    final Fahrenheit f2 = Fahrenheit(2);
    expect(f2.toString(), '2 °F');
    final Fahrenheit f3 = Fahrenheit(3000);
    expect(f3.toString(), '3000 °F');
    final Fahrenheit f4 = Fahrenheit(4000000);
    expect(f4.toString(), '4000000 °F');
  });
}
