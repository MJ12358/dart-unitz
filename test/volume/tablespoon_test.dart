import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(0.90234),
  CubicFoot(0.00052219),
  CubicMetre(Tablespoon().scale),
  CubicYard(0.00001934),
  Cup(0.0625),
  Litre(0.014787),
];

void main() {
  test('constructor', () {
    final Tablespoon tablespoon = Tablespoon();
    expect(tablespoon.value, 0);
    expect(tablespoon.name, 'Tablespoon');
    expect(tablespoon.pluralName, 'Tablespoons');
    expect(tablespoon.symbol, 'tbsp');
    expect(tablespoon.toString(), '0 tbsp');
  });

  test('conversion', () {
    final Tablespoon tablespoon = Tablespoon();
    for (final Unit unit in Volume.values) {
      expect(
        Unitz.convert(from: tablespoon, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Tablespoon tablespoon = Tablespoon(1);
    for (final Unit unit in unitList) {
      expect(tablespoon.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Tablespoon tablespoon = Tablespoon(1);
    for (final Unit unit in unitList) {
      expect(tablespoon == unit, isTrue);
    }
  });

  test('equality (explicit)', () {
    expect(Tablespoon(1) == Teaspoon(3), isTrue);
    expect(Tablespoon(2) == Teaspoon(6), isTrue);
    expect(Tablespoon(4) == Teaspoon(12), isTrue);
    expect(Tablespoon(16) == Cup(1), isTrue);
    expect(Tablespoon(1.5) == Teaspoon(3), isFalse);
    expect(Tablespoon(17) == Cup(1), isFalse);
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Tablespoon tablespoon1 = Tablespoon(1);
    expect(tablespoon1.toString(), '1 tbsp');
    final Tablespoon tablespoon2 = Tablespoon(2);
    expect(tablespoon2.toString(), '2 tbsp');
    final Tablespoon tablespoon3 = Tablespoon(3000);
    expect(tablespoon3.toString(), '3 ktbsp');
    final Tablespoon tablespoon4 = Tablespoon(4000000);
    expect(tablespoon4.toString(), '4 Mtbsp');
  });
}
