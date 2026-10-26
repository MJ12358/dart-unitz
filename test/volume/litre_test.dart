import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(61.0237),
  CubicFoot(0.035315),
  CubicMetre(Litre().factor),
  CubicYard(0.001308),
  Gallon(0.2641720523581),
  Quart(1.0566882094324),
  Pint(2.1133764188648),
  Cup(4.2267528377296),
  Tablespoon(67.6280454),
  Teaspoon(202.8841362),
];

void main() {
  test('constructor', () {
    final Litre litre = Litre();
    expect(litre.value, 0);
    expect(litre.name, 'Litre');
    expect(litre.pluralName, 'Litres');
    expect(litre.symbol, 'L');
    expect(litre.toString(), '0 L');
  });

  test('constructor (alt)', () {
    final Liter liter = Liter();
    expect(liter.value, 0);
    expect(liter.name, 'Liter');
    expect(liter.pluralName, 'Liters');
    expect(liter.symbol, 'L');
    expect(liter.toString(), '0 L');
  });

  test('conversion', () {
    final Litre litre = Litre();
    for (final Volume unit in Volume.values) {
      expect(
        Unitz.convert(from: litre, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Litre litre = Litre(1);
    for (final Unit unit in unitList) {
      expect(litre.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Litre litre = Litre(1);
    for (final Unit unit in unitList) {
      expect(litre == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Litre litre1 = Litre(1);
    expect(litre1.toString(), '1 L');
    final Litre litre2 = Litre(2);
    expect(litre2.toString(), '2 L');
    final Litre litre3 = Litre(3000);
    expect(litre3.toString(), '3 kL');
    final Litre litre4 = Litre(4000000);
    expect(litre4.toString(), '4 ML');
  });
}
