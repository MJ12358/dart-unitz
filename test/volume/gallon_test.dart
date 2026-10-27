import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(231.00000000004),
  CubicFoot(0.13368055555562),
  CubicMetre(Gallon().scale),
  CubicYard(0.0049511316871892),
  Litre(3.7854117840007),
  Tablespoon(255.99999998609),
  Teaspoon(767.99999995828),
];

void main() {
  Unitz.precision = 6;
  test('constructor', () {
    final Gallon gallon = Gallon();
    expect(gallon.value, 0);
    expect(gallon.name, 'Gallon');
    expect(gallon.pluralName, 'Gallons');
    expect(gallon.symbol, 'gal');
    expect(gallon.toString(), '0 gal');
  });

  test('conversion', () {
    final Gallon gallon = Gallon();
    for (final Unit unit in Volume.values) {
      expect(
        Unitz.convert(from: gallon, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Gallon gallon = Gallon(1);
    for (final Unit unit in unitList) {
      expect(gallon.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Gallon gallon = Gallon(1);
    for (final Unit unit in unitList) {
      expect(gallon == unit, isTrue);
    }
  });

  test('equality (explicit)', () {
    expect(Gallon(1) == Tablespoon(256), isTrue);
    expect(Gallon(1) == Teaspoon(768), isTrue);
    expect(Gallon(1) == Tablespoon(257), isFalse);
    expect(Gallon(1) == Teaspoon(769), isFalse);
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Gallon gallon1 = Gallon(1);
    expect(gallon1.toString(), '1 gal');
    final Gallon gallon2 = Gallon(2);
    expect(gallon2.toString(), '2 gal');
    final Gallon gallon3 = Gallon(3000);
    expect(gallon3.toString(), '3 kgal');
    final Gallon gallon4 = Gallon(4000000);
    expect(gallon4.toString(), '4 Mgal');
  });
}
