import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Celsius(-272.59),
  Fahrenheit(-458.67),
  Delisle(558.89),
  Kelvin(0.55556),
  // Reaumur(-218.08),
  Romer(-135.61),
];

void main() {
  test('constructor', () {
    final Rankine r = Rankine();
    expect(r.value, 0);
    expect(r.name, 'Rankine');
    expect(r.pluralName, 'Rankine');
    expect(r.symbol, '°Ra');
    expect(r.toString(), '0 °Ra');
  });

  // Expected: Celsius:<0 °C>
  // Actual: Celsius:<-273.15 °C>
  // test('conversion', () {
  //   final Rankine r = Rankine();
  //   for (final Unit unit in Temperature.values) {
  //     expect(
  //       Unitz.convert(from: r, to: unit),
  //       unit,
  //     );
  //   }
  // });

  test('conversion (boiling)', () {
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: Rankine().boiling, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: Rankine().freezing, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
  test('compare', () {
    final Rankine r = Rankine(1);
    for (final Unit unit in unitList) {
      expect(r.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Rankine r = Rankine(1);
    for (final Unit unit in unitList) {
      expect(r == unit, isTrue);
    }
  });

  test('toString', () {
    final Rankine r1 = Rankine(1);
    expect(r1.toString(), '1 °Ra');
    final Rankine r2 = Rankine(2);
    expect(r2.toString(), '2 °Ra');
    final Rankine r3 = Rankine(3000);
    expect(r3.toString(), '3000 °Ra');
    final Rankine r4 = Rankine(4000000);
    expect(r4.toString(), '4000000 °Ra');
  });
}
