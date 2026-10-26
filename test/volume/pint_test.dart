import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(28.875),
  CubicFoot(0.01671006944445),
  CubicMetre(Pint().factor),
  CubicYard(0.00061889146089854),
  Gallon(0.12499999999998),
  Litre(0.473176473),
  Tablespoon(31.999999998256),
  Teaspoon(95.999999994767),
];

void main() {
  Unitz.precision = 6;
  test('constructor', () {
    final Pint pint = Pint();
    expect(pint.value, 0);
    expect(pint.name, 'Pint');
    expect(pint.pluralName, 'Pints');
    expect(pint.symbol, 'pt');
    expect(pint.toString(), '0 pt');
  });

  test('conversion', () {
    final Pint pint = Pint();
    for (final Unit unit in Volume.values) {
      expect(
        Unitz.convert(from: pint, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Pint pint = Pint(1);
    for (final Unit unit in unitList) {
      expect(pint.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Pint pint = Pint(1);
    for (final Unit unit in unitList) {
      expect(pint == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Pint pint1 = Pint(1);
    expect(pint1.toString(), '1 pt');
    final Pint pint2 = Pint(2);
    expect(pint2.toString(), '2 pt');
    final Pint pint3 = Pint(3000);
    expect(pint3.toString(), '3 kpt');
    final Pint pint4 = Pint(4000000);
    expect(pint4.toString(), '4 Mpt');
  });
}
