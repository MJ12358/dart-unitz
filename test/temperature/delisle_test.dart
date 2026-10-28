import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Celsius(99.333333),
  Fahrenheit(210.8),
  Kelvin(372.483333),
  Rankine(670.47),
  Reaumur(79.467),
  Romer(59.650),
];

void main() {
  test('constructor', () {
    final Delisle d = Delisle();
    expect(d.value, 0);
    expect(d.name, 'Delisle');
    expect(d.pluralName, 'Delisle');
    expect(d.symbol, '°D');
    expect(d.toString(), '0 °D');
    expect(d.instance(), isA<Delisle>());
  });

  // Expected: Celsius:<0 °C>
  // Actual: Celsius:<100 °C>
  // test('conversion', () {
  //   final Delisle d = Delisle();
  //   for (final Unit unit in Temperature.values) {
  //     expect(
  //       Unitz.convert(from: d, to: unit),
  //       unit,
  //     );
  //   }
  // });

  test('conversion (boiling)', () {
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: Delisle().boiling, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: Delisle().freezing, to: t),
        Temperature.freezingMap[t],
      );
    }
  });

  test('compare', () {
    final Delisle d = Delisle(1);
    for (final Unit unit in unitList) {
      expect(d.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Delisle d = Delisle(1);
    for (final Unit unit in unitList) {
      expect(d == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true; // Temperature uses a NullPrefix
    final Delisle d1 = Delisle(1);
    expect(d1.toString(), '1 °D');
    final Delisle d2 = Delisle(2);
    expect(d2.toString(), '2 °D');
    final Delisle d3 = Delisle(3000);
    expect(d3.toString(), '3000 °D');
    final Delisle d4 = Delisle(4000000);
    expect(d4.toString(), '4000000 °D');
  });
}
