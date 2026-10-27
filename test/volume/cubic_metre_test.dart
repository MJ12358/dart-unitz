import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(1 / CubicInch().scale),
  CubicFoot(1 / CubicFoot().scale),
  CubicYard(1 / CubicYard().scale),
  Litre(1 / Litre().scale),
  Gallon(1 / Gallon().scale),
  Quart(1 / Quart().scale),
  Pint(1 / Pint().scale),
  Cup(1 / Cup().scale),
  Tablespoon(1 / Tablespoon().scale),
  Teaspoon(1 / Teaspoon().scale),
];

void main() {
  test('constructor', () {
    final CubicMetre cubicMetre = CubicMetre();
    expect(cubicMetre.value, 0);
    expect(cubicMetre.name, 'Cubic metre');
    expect(cubicMetre.pluralName, 'Cubic metres');
    expect(cubicMetre.symbol, 'm³');
    expect(cubicMetre.toString(), '0 m³');
  });

  test('constructor (alt)', () {
    final CubicMeter cubicMeter = CubicMeter();
    expect(cubicMeter.value, 0);
    expect(cubicMeter.name, 'Cubic meter');
    expect(cubicMeter.pluralName, 'Cubic meters');
    expect(cubicMeter.symbol, 'm³');
    expect(cubicMeter.toString(), '0 m³');
  });

  test('conversion', () {
    final CubicMetre cubicMetre = CubicMetre();
    for (final Volume unit in Volume.values) {
      expect(
        Unitz.convert(from: cubicMetre, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final CubicMetre cubicMetre = CubicMetre(1);
    for (final Unit unit in unitList) {
      expect(cubicMetre.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final CubicMetre cubicMetre = CubicMetre(1);
    for (final Unit unit in unitList) {
      expect(cubicMetre == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final CubicMetre cubicMetre1 = CubicMetre(1);
    expect(cubicMetre1.toString(), '1 m³');
    final CubicMetre cubicMetre2 = CubicMetre(2);
    expect(cubicMetre2.toString(), '2 m³');
    final CubicMetre cubicMetre3 = CubicMetre(3000);
    expect(cubicMetre3.toString(), '3 km³');
    final CubicMetre cubicMetre4 = CubicMetre(4000000);
    expect(cubicMetre4.toString(), '4 Mm³');
  });
}
