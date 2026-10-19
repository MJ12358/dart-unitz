import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Celsius(1.25),
  Fahrenheit(34.25),
  Delisle(148.13),
  Kelvin(274.4),
  Rankine(493.92),
  Romer(8.1563),
];

void main() {
  test('constructor', () {
    final Reaumur r = Reaumur();
    expect(r.value, 0);
    expect(r.name, 'Réaumur');
    expect(r.pluralName, 'Réaumur');
    expect(r.symbol, '°Ré');
    expect(r.toString(), '0 °Ré');
  });

  // Expected: Delisle:<0 °D>
  // Actual: Delisle:<150 °D>
  // test('conversion', () {
  //   final Reaumur r = Reaumur();
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
        Unitz.convert(from: Reaumur().boiling, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: Reaumur().freezing, to: t),
        Temperature.freezingMap[t],
      );
    }
  });

  test('compare', () {
    final Reaumur r = Reaumur(1);
    for (final Unit unit in unitList) {
      expect(r.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Reaumur r = Reaumur(1);
    for (final Unit unit in unitList) {
      expect(r == unit, isTrue);
    }
  });

  test('toString', () {
    final Reaumur r1 = Reaumur(1);
    expect(r1.toString(), '1 °Ré');
    final Reaumur r2 = Reaumur(2);
    expect(r2.toString(), '2 °Ré');
    final Reaumur r3 = Reaumur(3000);
    expect(r3.toString(), '3000 °Ré');
    final Reaumur r4 = Reaumur(4000000);
    expect(r4.toString(), '4000000 °Ré');
  });
}
