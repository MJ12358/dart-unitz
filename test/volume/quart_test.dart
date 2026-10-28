import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(57.75),
  CubicFoot(0.033420138888899),
  CubicMetre(Quart().scale),
  CubicYard(0.0012377829217971),
  Gallon(0.24999999999995),
  Litre(0.94635294599999),
  Tablespoon(63.999999996511),
  Teaspoon(191.99999998953),
];

void main() {
  Unitz.precision = 6;
  test('constructor', () {
    final Quart quart = Quart();
    expect(quart.value, 0);
    expect(quart.name, 'Quart');
    expect(quart.pluralName, 'Quarts');
    expect(quart.symbol, 'qt');
    expect(quart.toString(), '0 qt');
    expect(quart.instance(), isA<Quart>());
  });

  test('conversion', () {
    final Quart quart = Quart();
    for (final Unit unit in Volume.values) {
      expect(
        Unitz.convert(from: quart, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Quart quart = Quart(1);
    for (final Unit unit in unitList) {
      expect(quart.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Quart quart = Quart(1);
    for (final Unit unit in unitList) {
      expect(quart == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Quart quart1 = Quart(1);
    expect(quart1.toString(), '1 qt');
    final Quart quart2 = Quart(2);
    expect(quart2.toString(), '2 qt');
    final Quart quart3 = Quart(3000);
    expect(quart3.toString(), '3 kqt');
    final Quart quart4 = Quart(4000000);
    expect(quart4.toString(), '4 Mqt');
  });
}
