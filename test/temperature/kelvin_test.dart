import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Celsius(-272.15),
  Fahrenheit(-457.87),
  Delisle(558.225),
  Rankine(1.8),
  Reaumur(-217.72),
  Romer(-135.38),
];

void main() {
  test('constructor', () {
    final Kelvin k = Kelvin();
    expect(k.value, 0);
    expect(k.name, 'Kelvin');
    expect(k.pluralName, 'Kelvin');
    expect(k.symbol, 'K');
    expect(k.toString(), '0 K');
    expect(k.instance(), isA<Kelvin>());
  });

  // Expected: Celsius:<0 °C>
  // Actual: Celsius:<-273.15 °C>
  // test('conversion', () {
  //   final Kelvin k = Kelvin();
  //   for (final Unit unit in Temperature.values) {
  //     expect(
  //       Unitz.convert(from: k, to: unit),
  //       unit,
  //     );
  //   }
  // });

  test('conversion (boiling)', () {
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: Kelvin().boiling, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: Kelvin().freezing, to: t),
        Temperature.freezingMap[t],
      );
    }
  });

  test('compare', () {
    final Kelvin k = Kelvin(1);
    for (final Unit unit in unitList) {
      expect(k.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Kelvin k = Kelvin(1);
    for (final Unit unit in unitList) {
      expect(k == unit, isTrue);
    }
  });

  test('toString', () {
    // Unitz.prefixType = DecimalPrefix;
    final Kelvin k1 = Kelvin(1);
    expect(k1.toString(), '1 K');
    final Kelvin k2 = Kelvin(2);
    expect(k2.toString(), '2 K');
    final Kelvin k3 = Kelvin(3000);
    expect(k3.toString(), '3000 K');
    final Kelvin k4 = Kelvin(4000000);
    expect(k4.toString(), '4000000 K');
  });
}
