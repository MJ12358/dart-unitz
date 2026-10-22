import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(0.30078),
  CubicFoot(0.00017406),
  CubicMetre(Teaspoon().factor),
  CubicYard(0.0000064468),
  Cup(0.020833),
  Litre(0.0049289),
];

void main() {
  test('constructor', () {
    final Teaspoon teaspoon = Teaspoon();
    expect(teaspoon.value, 0);
    expect(teaspoon.name, 'Teaspoon');
    expect(teaspoon.pluralName, 'Teaspoons');
    expect(teaspoon.symbol, 'tsp');
    expect(teaspoon.toString(), '0 tsp');
  });

  test('conversion', () {
    final Teaspoon teaspoon = Teaspoon();
    for (final Unit unit in Volume.values) {
      expect(
        Unitz.convert(from: teaspoon, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Teaspoon teaspoon = Teaspoon(1);
    for (final Unit unit in unitList) {
      expect(teaspoon.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Teaspoon teaspoon = Teaspoon(1);
    for (final Unit unit in unitList) {
      expect(teaspoon == unit, isTrue);
    }
  });

  test('equality (explicit)', () {
    expect(Teaspoon(1) == Tablespoon(0.333333), isTrue);
    expect(Teaspoon(3) == Tablespoon(1), isTrue);
    expect(Teaspoon(6) == Tablespoon(2), isTrue);
    expect(Teaspoon(48) == Cup(1), isTrue);
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Teaspoon teaspoon1 = Teaspoon(1);
    expect(teaspoon1.toString(), '1 tsp');
    final Teaspoon teaspoon2 = Teaspoon(2);
    expect(teaspoon2.toString(), '2 tsp');
    final Teaspoon teaspoon3 = Teaspoon(3000);
    expect(teaspoon3.toString(), '3 ktsp');
    final Teaspoon teaspoon4 = Teaspoon(4000000);
    expect(teaspoon4.toString(), '4 Mtsp');
  });
}
