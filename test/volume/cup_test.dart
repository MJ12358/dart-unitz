import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(14.437499999079),
  CubicFoot(0.008355034721692),
  CubicMetre(Cup().scale),
  CubicYard(0.00030944573043),
  Litre(0.23658823648491),
  Gallon(0.062499999996002),
  Quart(0.25),
  Pint(0.5),
  Tablespoon(15.999999998107),
  Teaspoon(47.999999994322),
];

void main() {
  Unitz.precision = 6;
  test('constructor', () {
    final Cup cup = Cup();
    expect(cup.value, 0);
    expect(cup.name, 'Cup');
    expect(cup.pluralName, 'Cups');
    expect(cup.symbol, 'cup');
    expect(cup.toString(), '0 cup');
  });

  test('conversion', () {
    final Cup cup = Cup();
    for (final Unit unit in Volume.values) {
      expect(
        Unitz.convert(from: cup, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Cup cup = Cup(1);
    for (final Unit unit in unitList) {
      expect(cup.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Cup cup = Cup(1);
    for (final Unit unit in unitList) {
      expect(cup == unit, isTrue);
    }
  });

  test('equality (explicit)', () {
    expect(Cup(1) == Tablespoon(16), isTrue);
    expect(Cup(1) == Teaspoon(48), isTrue);
    expect(Cup(1) == Tablespoon(17), isFalse);
    expect(Cup(1) == Teaspoon(49), isFalse);
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Cup cup1 = Cup(1);
    expect(cup1.toString(), '1 cup');
    final Cup cup2 = Cup(2);
    expect(cup2.toString(), '2 cup');
    final Cup cup3 = Cup(3000);
    expect(cup3.toString(), '3 kcup');
    final Cup cup4 = Cup(4000000);
    expect(cup4.toString(), '4 Mcup');
  });
}
