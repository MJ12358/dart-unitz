import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicFoot(0.0005787),
  CubicMetre(CubicInch().factor),
  CubicYard(0.000021433),
  Litre(0.016387),
];

void main() {
  test('constructor', () {
    final CubicInch cubicInch = CubicInch();
    expect(cubicInch.value, 0);
    expect(cubicInch.name, 'Cubic inch');
    expect(cubicInch.pluralName, 'Cubic inches');
    expect(cubicInch.symbol, 'in³');
    expect(cubicInch.toString(), '0 in³');
  });

  test('conversion', () {
    final CubicInch cubicInch = CubicInch();
    for (final Unit unit in Volume.values) {
      expect(
        Unitz.convert(from: cubicInch, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final CubicInch cubicInch = CubicInch(1);
    for (final Unit unit in unitList) {
      expect(cubicInch.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final CubicInch cubicInch = CubicInch(1);
    for (final Unit unit in unitList) {
      expect(cubicInch == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final CubicInch cubicInch1 = CubicInch(1);
    expect(cubicInch1.toString(), '1 in³');
    final CubicInch cubicInch2 = CubicInch(2);
    expect(cubicInch2.toString(), '2 in³');
    final CubicInch cubicInch3 = CubicInch(3000);
    expect(cubicInch3.toString(), '3 kin³');
    final CubicInch cubicInch4 = CubicInch(4000000);
    expect(cubicInch4.toString(), '4 Min³');
  });
}
