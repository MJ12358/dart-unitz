import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(1728),
  CubicMetre(CubicFoot().scale),
  CubicYard(0.037037),
  Litre(28.317),
  Gallon(7.4805194805157),
  Quart(29.922077922068),
  Pint(59.844155844137),
  Cup(119.68831169591),
  Tablespoon(1915.012986908),
  Teaspoon(5745.038960724),
];

void main() {
  test('constructor', () {
    final CubicFoot cubicFoot = CubicFoot();
    expect(cubicFoot.value, 0);
    expect(cubicFoot.name, 'Cubic foot');
    expect(cubicFoot.pluralName, 'Cubic feet');
    expect(cubicFoot.symbol, 'ft³');
    expect(cubicFoot.toString(), '0 ft³');
  });

  test('conversion', () {
    final CubicFoot cubicFoot = CubicFoot();
    for (final Volume unit in Volume.values) {
      expect(
        Unitz.convert(from: cubicFoot, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final CubicFoot cubicFoot = CubicFoot(1);
    for (final Unit unit in unitList) {
      expect(cubicFoot.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final CubicFoot cubicFoot = CubicFoot(1);
    for (final Unit unit in unitList) {
      expect(cubicFoot == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final CubicFoot cubicFoot1 = CubicFoot(1);
    expect(cubicFoot1.toString(), '1 ft³');
    final CubicFoot cubicFoot2 = CubicFoot(2);
    expect(cubicFoot2.toString(), '2 ft³');
    final CubicFoot cubicFoot3 = CubicFoot(3000);
    expect(cubicFoot3.toString(), '3 kft³');
    final CubicFoot cubicFoot4 = CubicFoot(4000000);
    expect(cubicFoot4.toString(), '4 Mft³');
  });
}
