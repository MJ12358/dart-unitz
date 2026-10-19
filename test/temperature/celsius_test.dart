import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Delisle(148.5),
  Fahrenheit(33.8),
  Kelvin(274.15),
  Rankine(493.47),
  Reaumur(0.8),
  Romer(8.025),
];

void main() {
  test('constructor', () {
    final Celsius c = Celsius();
    expect(c.value, 0);
    expect(c.name, 'Celsius');
    expect(c.pluralName, 'Celsius');
    expect(c.symbol, '°C');
    expect(c.toString(), '0 °C');
  });

  test('constructor (alt)', () {
    final Centigrade c = Centigrade();
    expect(c.value, 0);
    expect(c.name, 'Centigrade');
    expect(c.pluralName, 'Centigrade');
    expect(c.symbol, '°C');
    expect(c.toString(), '0 °C');
  });

  // Expected: Delisle:<0 °D>
  // Actual: Delisle:<150 °D>
  // test('conversion', () {
  //   final Celsius c = Celsius();
  //   for (final Unit unit in Temperature.values) {
  //     expect(
  //       Unitz.convert(from: c, to: unit),
  //       unit,
  //     );
  //   }
  // });

  test('conversion (boiling)', () {
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: Celsius().boiling, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: Celsius().freezing, to: t),
        Temperature.freezingMap[t],
      );
    }
  });

  test('compare', () {
    final Celsius c = Celsius(1);
    for (final Unit unit in unitList) {
      expect(c.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Celsius c = Celsius(1);
    for (final Unit unit in unitList) {
      expect(c == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true; // Temperature uses a NullPrefix
    final Celsius c1 = Celsius(1);
    expect(c1.toString(), '1 °C');
    final Celsius c2 = Celsius(2);
    expect(c2.toString(), '2 °C');
    final Celsius c3 = Celsius(3000);
    expect(c3.toString(), '3000 °C');
    final Celsius c4 = Celsius(4000000);
    expect(c4.toString(), '4000000 °C');
  });
}
